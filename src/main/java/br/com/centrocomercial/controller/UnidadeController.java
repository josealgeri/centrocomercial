package br.com.centrocomercial.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.centrocomercial.model.Unidade;
import br.com.centrocomercial.repository.UnidadeRepository;

@Controller
@RequestMapping("/unidade")
public class UnidadeController {

	@Autowired
	private UnidadeRepository unidadeRepository;

	// Lista de Editoras
	@GetMapping("/")
	public String list(Model model) {
		model.addAttribute("unidades", unidadeRepository.findAll());
		return "unidade/list";
	}

	// Chama formulário
	@GetMapping("/novo")
	public String novo(Model model) {
		model.addAttribute("unidade", new Unidade());
		return "unidade/form";
	}

	// Salva o formulário
	@PostMapping("/salvar")
	public String salvar(Unidade unidade) {
		unidadeRepository.save(unidade);
		return "redirect:/unidade/";
	}

	// Edição de registro
	@GetMapping("/{sigla}")
	public String editar(@PathVariable String sigla, Model model) {
		model.addAttribute("unidade", unidadeRepository.findOneBySigla(sigla).get(0));
		
		System.out.println("Sigla: " + unidadeRepository.findOneBySigla(sigla).get(0).getSigla());
		System.out.println("Flag: " + unidadeRepository.findOneBySigla(sigla).get(0).getFlaginativo());
		return "unidade/form";
	}

	// Deletar registro
	@GetMapping("/remover/{sigla}")
	public String remover(@PathVariable String sigla) {	
		unidadeRepository.delete(sigla);
		return "redirect:/unidade/";
	}
}
