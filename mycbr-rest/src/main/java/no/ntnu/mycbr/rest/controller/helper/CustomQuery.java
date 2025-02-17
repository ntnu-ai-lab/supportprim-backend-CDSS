package no.ntnu.mycbr.rest.controller.helper;

import no.ntnu.mycbr.core.DefaultCaseBase;
import no.ntnu.mycbr.core.Project;
import no.ntnu.mycbr.core.casebase.Attribute;
import no.ntnu.mycbr.core.casebase.Instance;
import no.ntnu.mycbr.core.casebase.MultipleAttribute;
import no.ntnu.mycbr.core.model.*;
import no.ntnu.mycbr.core.retrieval.Retrieval;
import no.ntnu.mycbr.core.similarity.Similarity;
import no.ntnu.mycbr.rest.CbrService;
import no.ntnu.mycbr.util.Pair;
import no.ntnu.mycbr.rest.utils.TemporaryAmalgamFctNotChangedException;
import no.ntnu.mycbr.rest.utils.TemporaryAmalgamFctManager;

import java.util.*;

/**
 * @author: Amar Jaiswal
 */
public class CustomQuery implements Retrieval.RetrievalCustomer {

    private LinkedHashMap<String, Double> resultList = new LinkedHashMap<>();

    public CustomQuery(String casebase, String concept, String amalFunc, HashMap<String, Object> queryContent, int k) {

        Project project = CbrService.getProject();
        // create case bases and assign the case bases that will be used for submitting a query
        DefaultCaseBase cb = (DefaultCaseBase) project.getCaseBases().get(casebase);
        // create a concept and get the main concept of the project;
        Concept myConcept = project.getConceptByID(concept);

        TemporaryAmalgamFctManager tempAmalgamFctManager = new TemporaryAmalgamFctManager(myConcept);

        try {
            tempAmalgamFctManager.changeAmalgamFct(amalFunc);

            Retrieval r = new Retrieval(myConcept, cb, this);

            try {
                Instance query = r.getQueryInstance();

                for (Map.Entry<String, Object> att : queryContent.entrySet()) {
                    String name = att.getKey();

                    AttributeDesc attdesc = myConcept.getAttributeDesc(name);

                    if (attdesc.getClass().getSimpleName().equalsIgnoreCase("FloatDesc")) {
                        FloatDesc aFloatAtt = (FloatDesc) attdesc;
                        query.addAttribute(attdesc, Float.parseFloat(att.getValue().toString()));
                    }
                    if (attdesc.getClass().getSimpleName().equalsIgnoreCase("IntegerDesc")) {
                        IntegerDesc aIntegerAtt = (IntegerDesc) attdesc;
                        query.addAttribute(attdesc, Integer.parseInt(att.getValue().toString()));
                    }
                    if (attdesc.getClass().getSimpleName().equalsIgnoreCase("DoubleDesc")) {
                        DoubleDesc aIntegerAtt = (DoubleDesc) attdesc;
                        query.addAttribute(attdesc, Double.parseDouble(att.getValue().toString()));
                    }
                    if (attdesc.getClass().getSimpleName().equalsIgnoreCase("SymbolDesc")) {
                        SymbolDesc aSymbolAtt = (SymbolDesc) attdesc;
                        if (!aSymbolAtt.isMultiple()) {
                            query.addAttribute(attdesc, (String) att.getValue());
                        } else {
                            LinkedList<Attribute> llAtts = new LinkedList<Attribute>();
                            StringTokenizer st = new StringTokenizer((String) att.getValue(), ",");
                            while (st.hasMoreElements()) {
                                String symbolName = st.nextElement().toString().trim();
                                llAtts.add(aSymbolAtt.getAttribute(symbolName));
                            }

                            MultipleAttribute<SymbolDesc> muliSymbol = new MultipleAttribute<SymbolDesc>(aSymbolAtt, llAtts);
                            query.addAttribute(attdesc, muliSymbol);
                        }
                    }
                    if (attdesc.getClass().getSimpleName().equalsIgnoreCase("SpecialDesc")) {
                        SpecialDesc aIntegerAtt = (SpecialDesc) attdesc;
                        query.addAttribute(attdesc, "SpecialValueDesc");
                    }
                }

                if (k > -1) {
                    r.setK(k);
                    r.setRetrievalMethod(Retrieval.RetrievalMethod.RETRIEVE_K_SORTED);
                } else {
                    r.setRetrievalMethod(Retrieval.RetrievalMethod.RETRIEVE_SORTED);
                }

                r.start();
                List<Pair<Instance, Similarity>> results = this.results;

                for (Pair<Instance, Similarity> result : results) {
                    this.resultList.put(result.getFirst().getName(), result.getSecond().getValue());
                }

                query.reset();

            } catch (Exception e) {
                e.printStackTrace();
            }

        } catch (TemporaryAmalgamFctNotChangedException e) {
            // Return empty result
            return;
        } finally {
            tempAmalgamFctManager.rollBack();
        }
    }

    public LinkedHashMap<String, Double> getSimilarCases() {
        return resultList;
    }

    List<Pair<Instance,Similarity>> results;

    @Override
    public void addResults(Retrieval ret, List<Pair<Instance, Similarity>> results) {

        this.results = results;
    }

    public List<LinkedHashMap<String, String>> getFullResult(String concept) {
        LinkedHashMap<String, Double> results = this.getSimilarCases();
        List<LinkedHashMap<String, String>> cases = new ArrayList<>();

        for (Map.Entry<String, Double> entry : results.entrySet()) {
            String entryCaseID = entry.getKey();
            double similarity = entry.getValue();
            Case caze = new Case(concept, entryCaseID, similarity);
            cases.add(caze.getCase());
        }

        return cases;
    }
}
