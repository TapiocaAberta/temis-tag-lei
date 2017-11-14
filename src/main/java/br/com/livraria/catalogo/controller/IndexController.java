package br.com.livraria.catalogo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.livraria.catalogo.model.repository.LivroRepository;

@Controller
public class IndexController {
	
	@Autowired
	private LivroRepository repository;

	@RequestMapping("/")
	public String listaLivros(Model model) {
		model.addAttribute("todosLivros", repository.findAll());
		return "index";
	}

}