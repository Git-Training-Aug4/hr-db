package com.aug.hrdb.dto;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.NamedNativeQueries;
import javax.persistence.NamedNativeQuery;
import javax.persistence.Transient;

import com.aug.hrdb.dto.EducationDto;
import com.aug.hrdb.entities.MasDegreetype;

@Entity
@NamedNativeQueries({
	@NamedNativeQuery(name = "SEARCH_EDUCATION", query = "SELECT ed.ID, ed.UNIVERSITY, ed.DEGREETYPE_ID, ed.FACULTY, ed.MAJOR,"
		+ "ed.START_DATE, ed.GPA, ed.GRADUATED_DATE,ed.CERTIFICATION, ed.APPLICANT_ID"
		+ "join MAS_DEGREETYPE as mas_degreetype on mas_degreetype.ID = ed.DEGREETYPE_ID "
		+ " FROM EDUCATION ed LEFT JOIN APPLICANT a on ed.APPLICANT_ID = a.APPLICANT_ID WHERE ed.APPLICANT_ID = :ID", resultClass = EducationDto.class),
		
	@NamedNativeQuery(name = "SEARCH_EDUCATION_ID", query = "SELECT ed.ID, ed.UNIVERSITY, ed.DEGREE, ed.FACULTY, ed.MAJOR,"
		+ "ed.START_DATE, ed.GPA, ed.GRADUATED_DATE,ed.CERTIFICATION, ed.APPLICANT_ID"
		+ " FROM EDUCATION ed WHERE ed.ID =:ID",
		resultClass = EducationDto.class)
	})
public class EducationDto {
	
	@Id
	@GeneratedValue
	@Column(name = "ID")
	private Integer id;

	@Column(name = "UNIVERSITY")
	private String university;
	
	@Column(name = "DEGREETYPE_ID")
	private String masdegreetype;

	@Column(name = "FACULTY")
	private String faculty;

	@Column(name = "MAJOR")
	private String major;

	@Column(name = "GPA")
	private Double gpa;
	
	@Column(name = "START_DATE")
	private Date start_date;
	
	@Column(name = "GRADUATED_DATE")
	private Date graduated_date;
	
	@Column(name = "CERTIFICATION")
	private String certification;
	
	@Column(name="APPLICANT_ID")
	private Integer applicantId;
	
	@Transient
	private MasDegreetype degreeType;
	
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

	public String getDegree() {
		return masdegreetype;
	}

	public void setDegree(String masdegreetype) {
		this.masdegreetype = masdegreetype;
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

	public Integer getApplicant() {
		return applicantId;
	}

	public void setApplicant( Integer applicantId) {
		this.applicantId = applicantId;
	}

	public String getMasdegreetype() {
		return masdegreetype;
	}

	public void setMasdegreetype(String masdegreetype) {
		this.masdegreetype = masdegreetype;
	}

	public MasDegreetype getDegreeType() {
		return degreeType;
	}

	public void setDegreeType(MasDegreetype degreeType) {
		this.degreeType = degreeType;
	}
	
}

