package br.com.livraria.catalogo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import br.com.livraria.catalogo.model.Editora;
import br.com.livraria.catalogo.model.repository.EditoraRepository;

@Controller
public class EditoraController {
	
	@Autowired
	private EditoraRepository editoraRepository;

	@GetMapping("/editora/cadastrar")
	public String editoraHome() {
		return "editora";
	}
	
	@PostMapping("/editora/salvar")
	public String salvarEditora(@ModelAttribute Editora editora, Model model) {
		
		editoraRepository.save(editora);
		model.addAttribute("msgSuc", "Editora Cadastrada Com sucesso!");
		
		return "painel";
		
	}
}
