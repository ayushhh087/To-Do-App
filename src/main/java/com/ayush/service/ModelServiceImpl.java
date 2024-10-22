package com.ayush.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ayush.bean.Model;
import com.ayush.repository.IModelRepository;

@Service
public class ModelServiceImpl implements IModelService {

	@Autowired
	IModelRepository modelRepo;

	@Override
	public void addUser(Model user) {
		// TODO Auto-mm method stub
		modelRepo.save(user);
//		System.out.println(user.getDescription());
	}

	@Override
	public void deleteUser(Long id) {
		// TODO Auto-generated method stub
		modelRepo.deleteById(id);

	}

	@Override
	public List<Model> getAllTodos() {
		return modelRepo.findAll();
	}

	@Override
	public List<String> findAllDesc() {
		// TODO Auto-generated method stub
		return modelRepo.findAllDescriptions();
	}

	@Override
	public void getById(Long id) {
		// TODO Auto-generated method stub
		System.out.println(modelRepo.findById(id));
//		return null;
	}

	@Override
	public Model getUserById(Long id) {
		return modelRepo.findById(id).orElse(null); // Fetch task by ID
	}

	@Override
	public void updateUser(Model user) {
		modelRepo.save(user); // Save the updated task
	}

}
