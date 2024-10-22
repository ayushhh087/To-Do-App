package com.ayush.service;

import java.util.List;

import com.ayush.bean.Model;

public interface IModelService {
	void addUser(Model user);

	void deleteUser(Long id);

	List<Model> getAllTodos();

//	public List<Model> findbydesc(String desciption);

	public List<String> findAllDesc();

	public void getById(Long id);

	Model getUserById(Long id); // Method to fetch task by ID

	void updateUser(Model user);

}
