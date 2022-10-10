package tylermaxwell.loginregistration.repositories;

import org.springframework.data.repository.CrudRepository;
import tylermaxwell.loginregistration.models.User;


import java.util.Optional;

public interface UserRepository extends CrudRepository<User, Long> {
    Optional<User> findByEmail(String email);
}
