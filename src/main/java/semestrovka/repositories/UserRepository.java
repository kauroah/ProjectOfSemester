package semestrovka.repositories;

import semestrovka.models.User;

import java.util.UUID;

public interface UserRepository extends CrudRepository<User> {
    User findUser(String email, String password);
    void userCookie(UUID uuid, int userId);


}
