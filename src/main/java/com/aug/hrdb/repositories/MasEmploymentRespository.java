/**
 *
 * @author natechanok
 * @date Apr 27, 2015
 */

package com.aug.hrdb.repositories;

import java.util.List;

import com.aug.hrdb.entities.MasEmployment;



public interface MasEmploymentRespository extends GenericRepository<MasEmployment,Integer>{
	
List<MasEmployment> findByCriteria(MasEmployment masEmployment);
	
	public MasEmployment deleteById(Integer id);

}
