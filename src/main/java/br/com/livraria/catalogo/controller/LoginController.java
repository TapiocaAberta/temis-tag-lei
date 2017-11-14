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
public class LoginController {
	
	@Autowired
	private  UsuarioRepository usuarioRepository;
	
	@GetMapping("/login")
	public String entrar(Model model) {
		return "login";
	}
	
	@PostMapping("/login/entrar")
    public String greetingSubmit(@ModelAttribute Usuario usuario, Model model) {
		
		if(usuario.getLogin().equals("admin") && usuario.getSenha().equals("admin")) {
			return "painel";
			
		} else {
			
			if(usuarioRepository.findByLoginAndSenha(usuario.getLogin(), usuario.getSenha()) != null) {
				return "painel";
			} else {
				
				model.addAttribute("msgErr", "Usuário Inválido");
				
				return "login";
			}
			
		}
		
    }
}
