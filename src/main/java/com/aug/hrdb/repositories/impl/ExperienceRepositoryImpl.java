package com.aug.hrdb.repositories.impl;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.aug.hrdb.dto.AbilityDto;
import com.aug.hrdb.dto.ExperienceDto;
import com.aug.hrdb.entities.Experience;
import com.aug.hrdb.repositories.ExperienceRepository;

@Repository(value="experienceRepository")
public class ExperienceRepositoryImpl extends GenericRepositoryImpl<Experience, Serializable> implements ExperienceRepository {


	public ExperienceRepositoryImpl() {
		super(Experience.class);
		// TODO Auto-generated constructor stub
	}

	@Override
	public List<ExperienceDto> findExperienceById(Integer id) {
		Query query = getCurrentSession().getNamedQuery("SEARCH_EXPERIENCE");
		query.setParameter("ID", id);
		List<ExperienceDto> result = query.list();
		System.out.println("QUERYADDRESS :: " + result);
		return result;
	}

	@Override
	public ExperienceDto findExperience(Integer id) {
		Query query = getCurrentSession().getNamedQuery("SEARCH_EXPERIENCE_ID");
		query.setParameter("ID", id);
		List<ExperienceDto> result = query.list();
		ExperienceDto app = result.get(0);
		return app;
	}

	@Override
	public List<ExperienceDto> searchExperience(Integer id) {
		Query namedQuery = getCurrentSession().getNamedQuery("SEARCH_EXPERIENCE").setInteger("appId" ,id);
		//namedQuery.executeUpdate();
		List<ExperienceDto> expDto = namedQuery.list();
	     return expDto;
	}
	

	
}
