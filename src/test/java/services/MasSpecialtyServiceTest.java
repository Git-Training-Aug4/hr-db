package services;

import org.junit.Test;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.hibernate.Hibernate;
import org.junit.Assert;
import org.junit.Before;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import com.aug.hrdb.entities.Applicant;
import com.aug.hrdb.entities.Employee;
import com.aug.hrdb.entities.MasDivision;
import com.aug.hrdb.entities.MasJoblevel;
import com.aug.hrdb.entities.MasSpecialty;
import com.aug.hrdb.entities.MasTechnology;
import com.aug.hrdb.entities.Punish;
import com.aug.hrdb.services.ApplicantService;
import com.aug.hrdb.services.EmployeeService;
import com.aug.hrdb.services.MasDivisionService;
import com.aug.hrdb.services.MasJoblevelService;
import com.aug.hrdb.services.MasSpecialtyService;
import com.aug.hrdb.services.MasTechnologyService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:spring-bean-db-test.xml" })
@Transactional
public class MasSpecialtyServiceTest {

	@Autowired
	private MasSpecialtyService masSpecialtyService;
	@Autowired 
	private EmployeeService employeeService;
	@Autowired 
	private MasJoblevelService masJoblevelService;
	@Autowired 
	private ApplicantService applicantService;
	@Autowired 
	private MasDivisionService masDivisionService;
	@Autowired 
	private MasTechnologyService masTechnologyService;
	
	private	 Employee employee;
	int id;
	int empId;
	int masjobId;
	int appId; 
	int mastecId;
	
	
	@Before
	public void setMasSpecialty() {
		employee = new Employee();
		employee.setIdCard("115310905001-9");
        employee.setNameThai("ธัญลักษณ์์");
        employee.setNameEng("thanyalak");
        employee.setNicknameThai("กิ๊ก");
        employee.setNicknameEng("kik");
        employee.setSurnameThai("พิมสวรรค์");
        employee.setSurnameEng("Pimsawan");
        
        SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
    	String dateInString = "31-08-1982";
    	Date date = null;
		try {
			date = sdf.parse(dateInString);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
        
		employee.setDateOfBirth(date);
        employee.setEmail("test@gmail.com");
        employee.setEmergencyContact("mom");
        employee.setEmployeeCode("EMP-31");
        employee.setStatusemp("Employee");
        employee.setTelHome("089-0851022");
        employee.setTelMobile("089-0851022");
        employee.setEmergencyContactPhoneNumber("089-085-1022");
        employee.setAuditFlag("C");
        employee.setCreatedBy(1);
        employee.setCreatedTimeStamp(Calendar.getInstance().getTime());
        
        MasTechnology masTechnology = new MasTechnology();
		masTechnology.setName("java");
		masTechnology.setCode("001A");
		masTechnology.setIsActive(true);
		masTechnology.setAuditFlag("C");
		masTechnology.setCreatedBy(0);
		Calendar cal = Calendar.getInstance();
		masTechnology.setCreatedTimeStamp(cal.getTime());
		masTechnologyService.create(masTechnology);
		mastecId = masTechnology.getId();
		MasTechnology mTechnology = masTechnologyService.find(mastecId);

		MasJoblevel masJoblevel = new MasJoblevel();
		masJoblevel.setName("CEO");
		masJoblevel.setIsActive(true);
		masJoblevel.setCode("01");
		masJoblevel.setAuditFlag("C");
		masJoblevel.setCreatedBy(1);
		masJoblevel.setCreatedTimeStamp(Calendar.getInstance().getTime());
		masJoblevel.setCode("Division-01");

		masJoblevelService.create(masJoblevel);
		masjobId = masJoblevel.getId();
		MasJoblevel mJob = masJoblevelService.find(masjobId);
         			
        
        
        Applicant applicant = new Applicant();
		applicant.setCreatedBy(1);
		applicant.setCreatedTimeStamp(Calendar.getInstance().getTime());
		applicant.setAuditFlag("C");
		applicant.setCardId("115310905001-9");
		applicant.setTechnology(mTechnology);
		applicant.setJoblevel(mJob);
		applicantService.create(applicant);
		appId=applicant.getId();
		
        Applicant applicant1 = applicantService.findById(appId);
        Hibernate.initialize(applicant1);
        
        
        employee.setApplicant(applicant1);
         

	
		MasDivision masDivision = new MasDivision();
		masDivision.setName("CEO");
		masDivision.setIsActive(true);
		masDivision.setCode("01");
		masDivision.setAuditFlag("C");
		masDivision.setCreatedBy(1);
		masDivision.setCreatedTimeStamp(Calendar.getInstance().getTime());
		masDivision.setCode("Division-01");
		
		masDivisionService.create(masDivision);
		masDivisionService.findById(1);
		
		employee.setMasDivision(masDivision);	
		employee.setMasJoblevel(mJob);
		employeeService.create(employee);
		empId=employee.getId();
		
	
		Employee employee =employeeService.findById(1);
		   
		MasSpecialty masSpecialty=new MasSpecialty();
		masSpecialty.setName("Java");
		masSpecialty.setCode("01");
		masSpecialty.setIsActive(true);
		masSpecialty.setAuditFlag("C");
		masSpecialty.setCreatedBy(1);	
		masSpecialty.setCreatedTimeStamp(Calendar.getInstance().getTime());
		masSpecialtyService.create(masSpecialty);
		
		
	    id = masSpecialty.getId();
	    System.out.println("id: "+id);
	
	}
	
	
	
	@Test
	@Rollback(true)
	public void createDataMasSpecialty(){
		
		MasSpecialty masSpecialty=new MasSpecialty();
		masSpecialty.setName("Java");
		masSpecialty.setCode("01");
		masSpecialty.setIsActive(true);
		masSpecialty.setAuditFlag("C");
		masSpecialty.setCreatedBy(1);	
		masSpecialty.setCreatedTimeStamp(Calendar.getInstance().getTime());
	    masSpecialtyService.create(masSpecialty);
	}
	
	
	@Test
	@Rollback(true)
	public void updateDataMasSpecialty(){
		
		MasSpecialty masSpecialty = (MasSpecialty)masSpecialtyService.findById(id);
		masSpecialty.setName(".net");
		masSpecialty.setCode("02");
		masSpecialty.setIsActive(true);
		masSpecialty.setAuditFlag("C");
		masSpecialty.setCreatedBy(1);	
		masSpecialty.setCreatedTimeStamp(Calendar.getInstance().getTime());
		masSpecialtyService.update(masSpecialty);
	}
	
	
	@Test
	@Rollback(true)
	public void deleteDataMasSpecialty(){
		MasSpecialty masSpecialty=masSpecialtyService.findById(id);
		masSpecialtyService.delete(masSpecialty);
	}
	
	
	
	@Test
	public void findAllDataMasSpecialty(){

		List<MasSpecialty> masSpecialties = masSpecialtyService.findAll();
//		Assert.assertEquals(3, ability.size());
	}
	
	
	@Test
	public void findDatabyIdMasSpecialty(){

		MasSpecialty masSpecialty =(MasSpecialty) masSpecialtyService.findById(id);
		int id = masSpecialty.getId();
		Assert.assertEquals(id,id);

	}
	
}
