package no.ntnu.supportprim.lca.service;

import no.ntnu.supportprim.lca.knowledge.LcaIntercept;
import no.ntnu.supportprim.lca.knowledge.LcaPriorIntercept;
import no.ntnu.supportprim.lca.model.LcaVariables;
import no.ntnu.supportprim.lca.knowledge.LcaClassCoefficients;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Service;

import java.util.*;

/**
 * @author: Amar Jaiswal
 */
@Service
public class LcaService {

    private static final Log log = LogFactory.getLog(LcaService.class);


    public Map computeLcaClass(LcaVariables lcaVariables, boolean isStandardIntercept) {
        int lcaClass = -1;
        Map lcaCalciResponse = new LinkedHashMap();

        if (isPreconditionsMet(lcaVariables)){
            //log.info("The preconditions for the patient id : " + patient.getPatientId() + " : are met!");

            log.info("LCA intercept : " + LcaIntercept.intercept);
            lcaCalciResponse.put("lcaInterceptEachClass", LcaIntercept.intercept);

            List<Double> sumProductForAllClasses = getSumProductForAllClasses(lcaVariables);
            lcaCalciResponse.put("sumOfProductEachClass", sumProductForAllClasses);

            List<Double> logitScorePerClass = null;
            if(isStandardIntercept)
                logitScorePerClass = computeLogitBasedOnStandardIntercept(sumProductForAllClasses);
            else
                logitScorePerClass = computeLogitBasedOnPriorIntercept(sumProductForAllClasses);

            log.debug("The logit scores : " + logitScorePerClass);
            lcaCalciResponse.put("sumOfProductEachClass", sumProductForAllClasses);

            List<Double> anonymScores  = null;

            if (null != logitScorePerClass)
                anonymScores  = Arrays.asList(
                        Math.exp(logitScorePerClass.get(0) - logitScorePerClass.get(0)),
                        Math.exp(logitScorePerClass.get(1) - logitScorePerClass.get(0)),
                        Math.exp(logitScorePerClass.get(2) - logitScorePerClass.get(0)),
                        Math.exp(logitScorePerClass.get(3) - logitScorePerClass.get(0)),
                        Math.exp(logitScorePerClass.get(4) - logitScorePerClass.get(0)));

            log.debug("The anonymScores : " + anonymScores);
            lcaCalciResponse.put("anonymScoresEachClass", anonymScores);

            Double anonymSum = Double.MAX_VALUE;

            if (null != anonymScores)
                anonymSum = sum(anonymScores);

            log.debug("The anonymSum : " + anonymSum);
            lcaCalciResponse.put("sumOfAllAnonymScores", anonymSum);

            List<Double> lcaClassScores  = Arrays.asList(
                    anonymScores.get(0)/anonymSum,
                    anonymScores.get(1)/anonymSum,
                    anonymScores.get(2)/anonymSum,
                    anonymScores.get(3)/anonymSum,
                    anonymScores.get(4)/anonymSum);

            log.debug("The LCA class scores : " + lcaClassScores);
            lcaCalciResponse.put("lcaClassScores", lcaClassScores);

            int maxIndex = lcaClassScores.indexOf(Collections.max(lcaClassScores));

            lcaClass = maxIndex + 1;

            int lca = reorderAccordingIngebrigtPaper(lcaClass);

            lcaCalciResponse.put("lcaClass", lca);
        }

        return lcaCalciResponse;
    }

    private int reorderAccordingIngebrigtPaper(int lcaClass) {
        int lca = 0;

        switch (lcaClass){
            case 1 : lca = 2;
                break;
            case 2 : lca = 3;
                break;
            case 3 : lca = 4;
                break;
            case 4 : lca = 1;
                break;
            case 5 : lca = 5;
                break;
            default:
                lca = -1;
        }

        return lca;
    }

    private List<Double> getSumProductForAllClasses(LcaVariables lcaVariables) {
        List<Double> sumProductForAllClasses = null;
        List<List<Double>> listOfList = new ArrayList<>();

        listOfList.add(elementWiseMultiplication(1, LcaClassCoefficients.ageCoeff            .get(lcaVariables.getAge())));
        listOfList.add(elementWiseMultiplication(1, LcaClassCoefficients.genderCoeff         .get(lcaVariables.getGender())));
        listOfList.add(elementWiseMultiplication(1, LcaClassCoefficients.bmiCoeff            .get(lcaVariables.getBmi())));
        listOfList.add(elementWiseMultiplication(1, LcaClassCoefficients.eduCoeff            .get(lcaVariables.getEdu())));
        listOfList.add(elementWiseMultiplication(1, LcaClassCoefficients.painContinuousCoeff .get(lcaVariables.getPainContinuous())));

        // single valued
        listOfList.add(elementWiseMultiplication(lcaVariables.getPainDuration(), LcaClassCoefficients.painDurationCoeff));
        listOfList.add(elementWiseMultiplication(lcaVariables.getSleep(), LcaClassCoefficients.sleepCoeff));
        listOfList.add(elementWiseMultiplication(lcaVariables.getActivity(), LcaClassCoefficients.activityCoeff));
        listOfList.add(elementWiseMultiplication(lcaVariables.getPainLastWeek(), LcaClassCoefficients.painLastWeekCoeff));
        listOfList.add(elementWiseMultiplication(lcaVariables.getPainSiteCount(), LcaClassCoefficients.painSiteCountCoeff));
        listOfList.add(elementWiseMultiplication(lcaVariables.getOrebQ7(), LcaClassCoefficients.orebQ7Coeff));
        listOfList.add(elementWiseMultiplication(lcaVariables.getPseq(), LcaClassCoefficients.pseqCoeff));
        listOfList.add(elementWiseMultiplication(lcaVariables.getHsclMean(), LcaClassCoefficients.hsclMeanCoeff));
        listOfList.add(elementWiseMultiplication(lcaVariables.getOrebQ10(), LcaClassCoefficients.orebQ10Coeff));
        listOfList.add(elementWiseMultiplication(lcaVariables.getWorkAbility(), LcaClassCoefficients.workAbilityCoeff));

        if(lcaVariables.getPainContinuous().equals("no"))
            listOfList.add(elementWiseMultiplication(1, LcaClassCoefficients.painContLastWeekNoCoeff));
        else
            listOfList.add(elementWiseMultiplication(1, LcaClassCoefficients.painContLastWeekYesCoeff));

        listOfList.add(elementWiseMultiplication(lcaVariables.getPainDuration()* lcaVariables.getOrebQ7(), LcaClassCoefficients.painDurOreboQ7Coeff));
        listOfList.add(elementWiseMultiplication(lcaVariables.getSleep()* lcaVariables.getHsclMean(), LcaClassCoefficients.sleepHsclMeanCoeff));

        listOfList.add(elementWiseMultiplication(lcaVariables.getPainLastWeek()* lcaVariables.getPainLastWeek(), LcaClassCoefficients.painLastWeekSqCoeff));
        listOfList.add(elementWiseMultiplication(lcaVariables.getPainSiteCount()* lcaVariables.getPainSiteCount(), LcaClassCoefficients.painsiteNumSqCoeff));
        listOfList.add(elementWiseMultiplication(lcaVariables.getHsclMean()* lcaVariables.getHsclMean(), LcaClassCoefficients.hsclMeanSqCoeff));
        listOfList.add(elementWiseMultiplication(lcaVariables.getOrebQ7()* lcaVariables.getOrebQ7(), LcaClassCoefficients.orebroQ7SqCoeff));
        listOfList.add(elementWiseMultiplication(lcaVariables.getOrebQ10()* lcaVariables.getOrebQ10(), LcaClassCoefficients.orebQ10MeanSqCoeff));
        listOfList.add(elementWiseMultiplication(lcaVariables.getPseq()* lcaVariables.getPseq(), LcaClassCoefficients.revPseqSqCoeff));
        listOfList.add(elementWiseMultiplication(lcaVariables.getActivity()* lcaVariables.getWorkAbility(), LcaClassCoefficients.revActivityWorkAbilityCoeff));
        listOfList.add(elementWiseMultiplication(lcaVariables.getWorkAbility()* lcaVariables.getWorkAbility(), LcaClassCoefficients.revWorkAbilitySqCoeff));

        sumProductForAllClasses = sumIndexWise(listOfList);

        return sumProductForAllClasses;
    }

    public static List<Double> elementWiseMultiplication(double number, List<Double> doubleList) {
        // Double[] list = doubleList.toArray(new Double[doubleList.size()]);
        Double[] list = (Double[]) doubleList.toArray();
        Double[] product = (Double[]) Arrays.stream(list).map(i -> i*number).toArray(Double[]::new);
        List<Double> finalList = Arrays.asList(product);
        return finalList;
    }


    private List<Double> computeLogitBasedOnPriorIntercept(List<Double> sumProductForAllClasses) {
        List<Double> logitScorePerClass  = Arrays.asList(
                LcaIntercept.intercept.get(0) + sumProductForAllClasses.get(0),
                LcaIntercept.intercept.get(1) + sumProductForAllClasses.get(1),
                LcaIntercept.intercept.get(2) + sumProductForAllClasses.get(2),
                LcaIntercept.intercept.get(3) + sumProductForAllClasses.get(3),
                LcaIntercept.intercept.get(4) + sumProductForAllClasses.get(4));
        return logitScorePerClass;
    }

    private List<Double> computeLogitBasedOnStandardIntercept(List<Double> sumProductForAllClasses) {
        List<Double> logitScorePerClass  = Arrays.asList(
                LcaIntercept.intercept.get(0) - LcaPriorIntercept.c.get(0) + sumProductForAllClasses.get(0),
                LcaIntercept.intercept.get(1) - LcaPriorIntercept.c.get(1) + sumProductForAllClasses.get(1),
                LcaIntercept.intercept.get(2) - LcaPriorIntercept.c.get(2) + sumProductForAllClasses.get(2),
                LcaIntercept.intercept.get(3) - LcaPriorIntercept.c.get(3) + sumProductForAllClasses.get(3),
                LcaIntercept.intercept.get(4) - LcaPriorIntercept.c.get(4) + sumProductForAllClasses.get(4));
        return logitScorePerClass;
    }

    private boolean isPreconditionsMet(LcaVariables lcaVariables) {
        boolean isValidFlag = true;

        return isValidFlag;
    }

    static Double sum(List<Double> list) {
        Double sum = 0.0;
        for (Double val: list)
            sum += val;
        return sum;
    }

    static List<Double> sumIndexWise(List<List<Double>> list) {
        List<Double> indexSum = new ArrayList(Arrays.asList(0.0, 0.0, 0.0, 0.0, 0.0));
        for( List<Double> indexVal : list){
            indexSum.set(0,indexSum.get(0)+indexVal.get(0));
            indexSum.set(1,indexSum.get(1)+indexVal.get(1));
            indexSum.set(2,indexSum.get(2)+indexVal.get(2));
            indexSum.set(3,indexSum.get(3)+indexVal.get(3));
            indexSum.set(4,indexSum.get(4)+indexVal.get(4));
            log.debug("var.coeff : " + indexVal);
        }
        log.debug("The sum-product : " + indexSum);
        return indexSum;
    }

    public static void main(String[] args) {
        LcaVariables lcaVariables = new LcaVariables();
        LcaService lcaService = new LcaService();
        System.out.println("\n\nLCA computation Response :\n" + lcaService.computeLcaClass(lcaVariables, true));
    }
}