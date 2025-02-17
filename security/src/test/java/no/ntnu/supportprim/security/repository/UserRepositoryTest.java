package no.ntnu.supportprim.security.repository;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

/**
 * @author: Amar Jaiswal
 */
//@RunWith(SpringRunner.class)
@SpringBootTest
public class UserRepositoryTest {

	@Autowired
	private UserRepository userRepository;

	//@Test
	public void testFindByUsername() {
		System.out.println("\nPrinting the users:");
		userRepository.findAll().forEach(name -> {
			System.out.println("\nUser: " + name);
		});

		System.out.println("\n");
		System.out.println(userRepository.findByUsername("guest"));
		System.out.println("\n");
	}
}