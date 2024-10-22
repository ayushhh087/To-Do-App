package com.ayush.bean;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "Todo_List")
public class Model {
	
	@Id
	@SequenceGenerator(name = "g1",initialValue = 1,allocationSize = 1)
	@GeneratedValue(generator = "g1",strategy = GenerationType.SEQUENCE)
	private Long id;
	
	@Column
	private String todo;
	
	@Column
	private String description;

	
}
