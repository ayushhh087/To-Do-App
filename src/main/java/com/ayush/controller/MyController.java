package com.ayush.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ayush.bean.Model;
import com.ayush.service.IModelService;

@Controller
public class MyController {

	@Autowired
	IModelService service;

	@GetMapping("/")
	public String viewPage() {
		return "index";
	}

	@PostMapping("/idxpage")
	public String viewTodoPage(@ModelAttribute Model user, Map<String, Object> map) {
		service.addUser(user);
		map.put("user", user);
		List<Model> todoList = service.getAllTodos();
		map.put("todoList", todoList);
		return "index";
	}

	@GetMapping("/showtodo")
	public String viewRecentToDo(@ModelAttribute Model user,Map<String, Object> map) {
		List<Model> todo = service.getAllTodos();
		map.put("user", todo);
		System.out.println("ShowToDo:"+todo);
		return "show-todo";
	}
	
	@GetMapping("/delete")
	public String deleteToDo(@RequestParam("id")Long id,Map<String, Object>map) {
		service.deleteUser(id);
		List<Model> todo = service.getAllTodos(); 
		map.put("user", todo);
		return "show-todo";
	}
	
		
	@GetMapping("/editpage")
	public String editPage(@RequestParam("id") Long id, Map<String, Object> map) {
	    // Fetch the task by its ID from the service layer
	    Model task = service.getUserById(id); // Assuming you have this method in the service layer
	    
	    // Put the task object in the map to pass to the view
	    map.put("task", task);
	    return "edit-todo";  // This will render the edit page with the fetched task details
	}

	@PostMapping("/update-ToDo")
	public String updateTask(@RequestParam("id") Long id,
	                         @RequestParam("todo") String todo,
	                         @RequestParam("description") String description) {
	    // Fetch the existing task
	    Model task = service.getUserById(id);
	    
	    // Update the task details
	    task.setTodo(todo);
	    task.setDescription(description);
	    
	    // Save the updated task
	    service.updateUser(task);  // Assuming you have an update method in the service layer
	    
	    // Redirect back to the show-to-do page
	    return "redirect:/showtodo";
	}

	@GetMapping("/showindex")
	public String backHome() {
		return "index";
	}
}
