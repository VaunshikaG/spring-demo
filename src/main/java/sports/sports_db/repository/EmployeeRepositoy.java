//  to connect with db
package sports.sports_db.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import sports.sports_db.entity.EmployeeEntity;

@Repository
public interface EmployeeRepositoy extends JpaRepository<EmployeeEntity, Integer> {

    public boolean exsitsByName(String firstname, String lastname);

    public boolean existsById(int id);
}
