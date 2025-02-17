package no.ntnu.supportprim.security.repository;

import no.ntnu.supportprim.security.model.User;
import org.springframework.data.elasticsearch.repository.ElasticsearchRepository;
import org.springframework.stereotype.Repository;

/**
 * @author: Amar Jaiswal
 */
@Repository
public interface UserRepository extends ElasticsearchRepository<User, String> {

    User findByUsername(String username);

    void deleteByUsername(String username);
}

//boolean existsByUsername(String username);