package no.ntnu.supportprim.elastic.repository;

import no.ntnu.supportprim.elastic.model.Patient;
import org.springframework.data.elasticsearch.repository.ElasticsearchRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author: Amar Jaiswal
 */
@Repository
public interface PatientRepository extends ElasticsearchRepository<Patient, String> {
    //@Query("findByPatientId")
    Patient findByPatientId(String patientId);

    //@Query("findByClinicID")
    List<Patient> findByClinicId(String clinicID);
}
