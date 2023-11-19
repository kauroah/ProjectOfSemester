package semestrovka.repositories;

import java.util.List;

public interface
CrudRepository<T> {
    void save(T model);

    List<T> findAll();

    List<T> findByAge(int age);

}
