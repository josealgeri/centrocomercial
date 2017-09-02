package br.com.centrocomercial.controller;
 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

<<<<<<< HEAD:src/main/java/br/com/centrocomercial/controller/CategoriaProdController.java
import br.com.centrocomercial.model.CategoriaProd;
import br.com.centrocomercial.repository.CategoriaProdRepository;
=======
import br.com.centrocomercial.model.Categoria;
import br.com.centrocomercial.repository.CategoriaRepository;
>>>>>>> 2bdb2b28a8888f1a9ff992bb0ae98c926f10b021:src/main/java/br/com/centrocomercial/controller/CategoriaController.java

@Controller
@RequestMapping("/categoria")
public class CategoriaProdController {

	@Autowired
	private CategoriaProdRepository categoriaRepository;

	// Lista de Editoras
	@GetMapping("/")
	public String list(Model model) {
		model.addAttribute("categorias", categoriaRepository.findAll());
		return "categoria/list";
	}

	// Chama formulário
	@GetMapping("/novo")
	public String novo(Model model) {
		model.addAttribute("categoria", new CategoriaProd());
		return "categoria/form";
	}

	// Salva o formulário
	@PostMapping("/salvar")
	public String salvar(CategoriaProd categoria) {
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
