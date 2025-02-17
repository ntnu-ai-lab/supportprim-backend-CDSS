package no.ntnu.supportprim.elastic.repository;

import no.ntnu.supportprim.elastic.model.PatientXml;
import org.springframework.data.elasticsearch.repository.ElasticsearchRepository;
import org.springframework.stereotype.Repository;

/**
 * @author: Amar Jaiswal
 */
@Repository
public interface PatientXmlRepository extends ElasticsearchRepository<PatientXml, String> {
}
