package br.com.livraria.catalogo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import br.com.livraria.catalogo.model.Usuario;
import br.com.livraria.catalogo.model.repository.UsuarioRepository;

@Controller
public class UsuarioController {
	
	@Autowired
	private UsuarioRepository usuarioRepository;

	@GetMapping("/usuario/cadastrar")
	public String usuarioHome() {
		return "usuario";
	}
	
	@PostMapping("/usuario/salvar")
	public String salvarUsuario(@ModelAttribute Usuario usuario, Model model) {
		
		StringBuilder msgErr = new StringBuilder();
		StringBuilder msgSuc = new StringBuilder();
		boolean semErro = true;
		
		if("".equals(usuario.getLogin())) {
			msgErr.append("login não pode ser vazio\n");
			semErro = false;
		}
		
		if("".equals(usuario.getSenha())) {
			msgErr.append("senha não pode ser vazio");
			semErro = false;
		}
		
		if(!semErro) {
			model.addAttribute("msgErr", msgErr.toString());
			return "usuario";
		}
		
		usuarioRepository.save(usuario);
		msgSuc.append("Cadastrado com sucesso!");
		model.addAttribute("msgSuc", msgSuc.toString());
		
		return "painel";
	}
	
}
