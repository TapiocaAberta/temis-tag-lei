package com.sjcdigital.temis.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.view.RedirectView;

import com.sjcdigital.temis.model.Data;
import com.sjcdigital.temis.repositories.DataRepository;

@Controller
public class IndexController {
	
	@Autowired
	private DataRepository repository;
	
	@GetMapping("/")
	public String listaLivros(Model model) {
		
		List<Data> todasLeisSemClassificacao = repository.findByTagLike("SEM_CLASSIFICACAO");
		long totalLeisClassificdas = repository.count() - todasLeisSemClassificacao.size();
		
		model.addAttribute("todasLeis", todasLeisSemClassificacao);
		model.addAttribute("totalLeisClassificdas", totalLeisClassificdas);
		
		return "index";
	}
	
	@PostMapping("/salvar")
	public RedirectView salvarLivro(@ModelAttribute Data data, @ModelAttribute(name="tag") String tag, Model model) {
		
		data.setTag(tag);
		repository.save(data);
		
		return new RedirectView("/");
	}

}
