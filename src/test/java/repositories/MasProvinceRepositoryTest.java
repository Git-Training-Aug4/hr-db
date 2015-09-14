/**
 *
 * @author Pranrajit
 * @date 4 ก.ย. 2558
 */
package repositories;

import java.util.Calendar;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import com.aug.hrdb.entities.MasProvince;
import com.aug.hrdb.repositories.MasProvinceRepository;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:spring-bean-db-test.xml" })
@Transactional
public class MasProvinceRepositoryTest {
	@Autowired MasProvinceRepository masProvinceRepository;
	
	@Test
	@Rollback(false)
	public void createMasProvince(){
		MasProvince masProvince = new MasProvince();
		masProvince.setName("Bangkok");
		masProvince.setCode("PRO-01");
		masProvince.setIsActive(true);
		masProvince.setAuditFlag("C");
		masProvince.setCreatedBy(1);
		masProvince.setCreatedTimeStamp(Calendar.getInstance().getTime());
		masProvinceRepository.getCurrentSession().save(masProvince);
		
		MasProvince masProvince1 = new MasProvince();
		masProvince1.setName("trad");
		masProvince1.setCode("PRO-02");
		masProvince1.setIsActive(true);
		masProvince1.setAuditFlag("C");
		masProvince1.setCreatedBy(1);
		masProvince1.setCreatedTimeStamp(Calendar.getInstance().getTime());
		masProvinceRepository.getCurrentSession().save(masProvince);
	}
	
	@Test
	@Rollback(false)
	public void updateMasProvince(){
		
		MasProvince masProvince=(MasProvince)masProvinceRepository.getCurrentSession().get(MasProvince.class,1);
		//System.out.println("id: "+masProvince.getId());
		masProvince.setName("changmai");
		masProvinceRepository.getCurrentSession().update(masProvince);
		
		
	}
	
	@Test
	@Rollback(false)
	public void deleteMasProvince(){
		
		MasProvince masProvince = (MasProvince) masProvinceRepository.getCurrentSession().get(MasProvince.class,1);
		masProvinceRepository.getCurrentSession().delete(masProvince);
	}

}
