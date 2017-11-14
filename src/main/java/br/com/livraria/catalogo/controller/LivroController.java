package br.com.livraria.catalogo.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import br.com.livraria.catalogo.model.Livro;
import br.com.livraria.catalogo.model.repository.EditoraRepository;
import br.com.livraria.catalogo.model.repository.LivroRepository;

@Controller
public class LivroController {
	
	@Autowired
	private LivroRepository livroRepository;
	
	@Autowired
	private EditoraRepository editoraRepository;

	@GetMapping("/livro/cadastrar")
	public String livroHome(Model model) {
		model.addAttribute("todasEditoras", editoraRepository.findAll());
		return "livro";
	}
	
	@GetMapping("/livro/listar")
	public String livroEditar(Model model) {
		model.addAttribute("todosLivros", livroRepository.findAll());
		return "livroListar";
	}
	
	@GetMapping("/livro/editar/{id}")
	public String livroEditar(@PathVariable Long id, Model model) {
		
		model.addAttribute("livro", livroRepository.findOne(id));
		model.addAttribute("todasEditoras", editoraRepository.findAll());
		
		return "livro";
	}
	
	@PostMapping("/livro/salvar")
	public String salvarLivro(@ModelAttribute Livro livro, @RequestParam("file") MultipartFile file, Model model) {
		
		try {
			
			String pathFoto = "src/main/webapp/fotos/" + file.getOriginalFilename();
			Files.write(Paths.get(pathFoto), file.getBytes());
			
			livro.setFoto("/fotos/" + file.getOriginalFilename());
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		livroRepository.save(livro);
		model.addAttribute("msgSuc", "Livro Cadastrada Com sucesso!");
		return "painel";
		
	}
	
	@PostMapping("/livro/filtrar")
	public String filtrarLivro(@ModelAttribute(name = "titulo") String titulo, Model model) {
		
		if("".equals(titulo)) {
			model.addAttribute("todosLivros", livroRepository.findAll());
		} else {
			model.addAttribute("todosLivros", livroRepository.findByTituloLike(titulo));
		}
		
		return "index";
		
	}
	
}
