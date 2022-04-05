//  to connect with db

package sports.sports_db.sports_db.repository;

import com.sports.sports_db.entity.EmployeeEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EmployeeRepositoy extends JpaRepository<EmployeeEntity, Integer> {

    public boolean existsByFirstNameAndLastName(String firstname, String lastname);

    public boolean existsById(int id);
}
