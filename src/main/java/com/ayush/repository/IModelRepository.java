package com.ayush.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.ayush.bean.Model;

public interface IModelRepository extends JpaRepository<Model, Long>{

//	List<Model> findByDescription(String description);
//	List<Model> findAllDescription();
	
	
	  @Query("SELECT m.description FROM Model m") // Custom query bhi use kar sakte hain
	   List<String> findAllDescriptions();
	  
//	  @Query("SELECT t.todo FROM Todo t WHERE t.id = :id")
//	  public String getById(Long id);
	  
}
