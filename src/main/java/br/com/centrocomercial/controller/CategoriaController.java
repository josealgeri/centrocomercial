package br.com.centrocomercial.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.centrocomercial.model.Categoria;
import br.com.centrocomercial.model.Editora;
import br.com.centrocomercial.repository.CategoriaRepository;

@Controller
@RequestMapping("/categoria")
public class CategoriaController {

	@Autowired
	private CategoriaRepository categoriaRepository;

	// Lista de Editoras
	@GetMapping("/")
	public String list(Model model) {
		model.addAttribute("categorias", categoriaRepository.findAll());
		return "categoria/list";
	}

	// Chama formulário
	@GetMapping("/novo")
	public String novo(Model model) {
		model.addAttribute("categoria", new Categoria());
		return "categoria/form";
	}

	// Salva o formulário
	@PostMapping("/salvar")
	public String salvar(Categoria categoria) {
		categoriaRepository.save(categoria);
		return "redirect:/categoria/";
	}

	// Edição de registro
	@GetMapping("/{id}")
	public String editar(@PathVariable Long id, Model model) {
		model.addAttribute("categoria", categoriaRepository.findOne(id));
		return "categoria/form";
	}

	// Deletar registro
	@GetMapping("/remover/{id}")
	public String remover(@PathVariable Long id) {
		categoriaRepository.delete(id);
		return "redirect:/categoria/";
	}
}
