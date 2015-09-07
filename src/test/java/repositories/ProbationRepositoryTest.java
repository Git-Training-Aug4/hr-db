package repositories;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Locale;

import org.junit.Assert;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import com.aug.hrdb.entities.Probation;
import com.aug.hrdb.repositories.ProbationRepository;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:spring-bean-db-test.xml" })
@Transactional
public class ProbationRepositoryTest {
	
	@Autowired ProbationRepository probationRepository;
	
	@Test
	@Ignore
	@Rollback(false)
	public void create() throws ParseException{
		SimpleDateFormat dateFmt = new SimpleDateFormat("dd/MM/yyyy",Locale.ENGLISH);
		Probation probation = new Probation();
		
		probation.setId(1);
		probation.setDateFrom(dateFmt.parse("04/01/2015"));
		probation.setDateTo(dateFmt.parse("04/01/2015"));
		probation.setName("Jutamas");
		probation.setReason("Good");
		probation.setStatus("Pass");

		probationRepository.getCurrentSession().save(probation);
	}
	
	@Test
	@Rollback(false)
	public void findById(){
		Probation probation = probationRepository.find(1);
	}
	
	@Test
	@Rollback(false)
	public void update(){
		Probation probation = probationRepository.find(1);
		probation.setStatus("Not pass");
	}
	
	@Test
	@Rollback(false)
	public void delete(){
		Probation probation = probationRepository.find(1);
		probationRepository.delete(probation);
	}
	
	
	@Test
	public void findAll(){	
		List<Probation> probations = probationRepository.findAll();
		Assert.assertEquals(1, probations.size());
	}
}
