package no.ntnu.supportprim.elastic.repository;

import no.ntnu.supportprim.elastic.model.PatientJson;
import org.springframework.data.elasticsearch.repository.ElasticsearchRepository;
import org.springframework.stereotype.Repository;

/**
 * @author: Amar Jaiswal
 */
@Repository
public interface PatientJsonRepository extends ElasticsearchRepository<PatientJson, String> {
}
