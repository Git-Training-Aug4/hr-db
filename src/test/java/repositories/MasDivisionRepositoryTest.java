/**
 *
 * @author Preeyaporn
 * @date 27 เม.ย. 2558
 */
package repositories;

import java.util.Calendar;
import java.util.List;

import org.hibernate.Criteria;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import com.aug.hrdb.entities.MasDivision;
import com.aug.hrdb.repositories.MasDivisionRepository;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:spring-bean-db-test.xml" })
@Transactional
public class MasDivisionRepositoryTest {

	@Autowired
	private MasDivisionRepository masDivisionRepository;

	
	int id;
	@Before
	public void setValue(){
		MasDivision masDivision = new MasDivision();
		masDivision.setName("CEO");
		masDivision.setIsActive(true);
		masDivision.setCode("01");

		masDivision.setAuditFlag("C");
		masDivision.setCreatedBy(1);
		masDivision.setCreatedTimeStamp(Calendar.getInstance().getTime());
		
		masDivisionRepository.create(masDivision);
			
		id = masDivision.getId();
	}
	
	@Test
	@Rollback(true)
	public void create() {

		MasDivision masDivision = new MasDivision();
		masDivision.setName("CEO");
		masDivision.setIsActive(true);
		masDivision.setCode("01");

		masDivision.setAuditFlag("C");
		masDivision.setCreatedBy(1);
		masDivision.setCreatedTimeStamp(Calendar.getInstance().getTime());
		
		masDivisionRepository.create(masDivision);
	}

	@Test
	@Rollback(true)
	public void update() {

		MasDivision masDivision = (MasDivision) masDivisionRepository.getCurrentSession().get(
				MasDivision.class, id);
		masDivision.setName("IT");

		masDivisionRepository.update(masDivision);
	}

	@Test
	@Rollback(true)
	public void Delete() {

		MasDivision masDivision = (MasDivision) masDivisionRepository.getCurrentSession().get(
				MasDivision.class, id);

		masDivisionRepository.delete(masDivision);
	}

	
	@Test
	@Rollback(true)
	public void list() {

		Criteria c = masDivisionRepository.getCurrentSession().createCriteria(
				MasDivision.class);
		List<MasDivision> masDivisions = c.list();
		

	}
}
