package no.ntnu.supportprim.elastic.repository;

import no.ntnu.supportprim.elastic.model.ManualPatient;
import org.springframework.data.elasticsearch.repository.ElasticsearchRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author: Amar Jaiswal
 */
@Repository
public interface ManualPatientRepository extends ElasticsearchRepository<ManualPatient, String> {
    //@Query("findByPatientId")
    ManualPatient findByPatientId(String patientId);

    //@Query("findByClinicID")
    List<ManualPatient> findByClinicId(String clinicID);


}
