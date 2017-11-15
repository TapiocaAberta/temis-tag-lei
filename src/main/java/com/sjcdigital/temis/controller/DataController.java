package com.sjcdigital.temis.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.sjcdigital.temis.model.Data;
import com.sjcdigital.temis.repositories.DataRepository;

@RestController
@RequestMapping("/api/data")
public class DataController {
	
	@Autowired
	private DataRepository repository;
	
	@GetMapping({"/", ""})
	public Iterable<Data> todos() {
		return repository.findAll();
	}
	
	@GetMapping("/arquivo-train")
	public String pegaDataParaTreino() {
		
		StringBuilder data = new StringBuilder();
		List<Data> leis = repository.findByTagNot("SEM_CLASSIFICACAO");
		
		for (Data lei : leis) {
			data.append(lei.getTag()).append(" ").append(lei.getText()).append("\n");
		}
		
		return data.toString();
	
	}

}
