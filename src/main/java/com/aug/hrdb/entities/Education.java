package com.aug.hrdb.entities;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.aug.hrdb.dto.EducationDto;
import com.fasterxml.jackson.annotation.JsonFormat;

@Entity
@Table(name = "EDUCATION")
public class Education extends BaseEntity{
	
	@Id
	@GeneratedValue
	@Column(name = "ID")
	private Integer id;

	@Column(name = "UNIVERSITY")
	private String university;

	@Column(name = "FACULTY")
	private String faculty;

	@Column(name = "MAJOR")
	private String major;

	@Column(name = "GPA")
	private Double gpa;
	
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "dd-MM-yyyy", locale = "en", timezone = "GMT")
	@Column(name = "START_DATE")
	private Date start_date;
	
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "dd-MM-yyyy", locale = "en", timezone = "GMT")
	@Column(name = "GRADUATED_DATE")
	private Date graduated_date;
	
	@Column(name = "CERTIFICATION")
	private String certification;
	
	@ManyToOne
	@JoinColumn(name="APPLICANT_ID")
	private Applicant applicant;
	
	
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name = "DEGREETYPE_ID",nullable = false)
	private MasDegreetype masdegreetype;
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUniversity() {
		return university;
	}

	public void setUniversity(String university) {
		this.university = university;
	}

	public String getFaculty() {
		return faculty;
	}

	public void setFaculty(String faculty) {
		this.faculty = faculty;
	}

	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public Double getGpa() {
		return gpa;
	}

	public void setGpa(Double gpa) {
		this.gpa = gpa;
	}

	public Date getStart_date() {
		return start_date;
	}

	public void setStart_date(Date start_date) {
		this.start_date = start_date;
	}

	public Date getGraduated_date() {
		return graduated_date;
	}

	public void setGraduated_date(Date graduated_date) {
		this.graduated_date = graduated_date;
	}

	public String getCertification() {
		return certification;
	}

	public void setCertification(String certification) {
		this.certification = certification;
	}

	public MasDegreetype getMasdegreetype() {
		return masdegreetype;
	}

	public void setMasdegreetype(MasDegreetype masdegreetype) {
		this.masdegreetype = masdegreetype;
	}

	public Applicant getApplicant() {
		return applicant;
	}

	public void setApplicant(Applicant applicant) {
		this.applicant = applicant;
	}

public EducationDto toEducationDto() {
		
		EducationDto educationDto = new EducationDto();
		
		educationDto.setId(this.id);
		educationDto.setUniversity(this.university);
		educationDto.setGpa(this.gpa);
		educationDto.setFaculty(this.faculty);
		educationDto.setMajor(this.major);
		/*educationDto.setCertificate(this.certificate);
		educationDto.setDescription(this.description);
		educationDto.setStartDate(this.startDate);
		educationDto.setGraduatedDate(this.graduatedDate);
		educationDto.setEmployeeId(this.employee.getId());
		educationDto.setMasDegreeTypeId(this.masdegreetype.getId() );*/
		educationDto.setMasdegreetype(this.masdegreetype.getName() );
		
		return educationDto;
		
	}
	
	public Education fromEducationDto(Education education, EducationDto educationDto) {
		
//		education.setId(educationDto.getId());
		education.setUniversity(educationDto.getUniversity());
		education.setGpa(educationDto.getGpa());
		education.setFaculty(educationDto.getFaculty());
		education.setMajor(educationDto.getMajor());
		/*education.setCertificate(educationDto.getCertificate());
		education.setDescription(educationDto.getDescription());
		education.setStartDate(educationDto.getStartDate());
		education.setGraduatedDate(educationDto.getGraduatedDate());*/
		
		Applicant applicant = new Applicant();
		applicant.setId(educationDto.getId());
		education.setApplicant(applicant);
		
		MasDegreetype masDegreetype = new MasDegreetype();
		masDegreetype.setId(id);
		masDegreetype.setName(educationDto.getMasdegreetype());
		education.setMasdegreetype(masDegreetype);
		
		return education;
		
	}
	

	
}
