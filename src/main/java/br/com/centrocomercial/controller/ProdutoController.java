package br.com.centrocomercial.controller;
 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping; 

import br.com.centrocomercial.model.Produto;
import br.com.centrocomercial.repository.ProdutoRepository;

@Controller
@RequestMapping("/produto")
public class ProdutoController {

	@Autowired
	private ProdutoRepository produtoRepository;

	// Lista de Editoras
	@GetMapping("/")
	public String list(Model model) {
		model.addAttribute("produtos", produtoRepository.findAll());
		return "produto/list";
	}

	// Chama formulário
	@GetMapping("/novo")
	public String novo(Model model) {
		model.addAttribute("produto", new Produto());
		return "produto/form";
	}

	// Salva o formulário
	@PostMapping("/salvar")
	public String salvar(Produto produto) {
		
		produtoRepository.save(produto);
		return "redirect:/produto/";
	}

	// Edição de registro
	@GetMapping("/{id}")
	public String editar(@PathVariable Long id, Model model) {
		model.addAttribute("produto", produtoRepository.findOne(id));
		return "produto/form";
	}

	// Deletar registro
	@GetMapping("/remover/{id}")
	public String remover(@PathVariable Long id) {
		produtoRepository.delete(id);
		return "redirect:/produto/";
	}
}
