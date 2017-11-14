package com.sjcdigital.temis.inicia;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.sjcdigital.temis.model.Data;
import com.sjcdigital.temis.repositories.DataRepository;

@Component
public class CarregaDados {
	
	@Autowired
	private DataRepository repository;
	
	String dataJsonFile = "src/main/resources/pt-leis-train.json";
	
	@PostConstruct
    public void init() throws IOException {
		
		if(repository.count() == 0) {
			
			System.out.println("#### Carregando dados ... ");
			
			String dataJson = new String(Files.readAllBytes(Paths.get(dataJsonFile)));
			ObjectMapper jsonMapper = new ObjectMapper();
			TypeReference<List<Data>> typeReference = new TypeReference<List<Data>>(){};
			List<Data> datas = jsonMapper.readValue(dataJson, typeReference);
			repository.save(datas);
		}
		
    }

}
