package br.com.centrocomercial.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.centrocomercial.model.Categoria;

public interface CategoriaRepository extends JpaRepository<Categoria, Long> {

<<<<<<< HEAD
=======
	public List<Categoria> findByDescricaoContainingIgnoreCase(String descricao);
>>>>>>> 47586629275b411da8bd8abab667d80da2a46c4c

}
