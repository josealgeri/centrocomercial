package br.com.centrocomercial.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.centrocomercial.model.Categoria;

public interface CategoriaRepository extends JpaRepository<Categoria, Long> {

	public List<Categoria> findByDescricaoContainingIgnoreCase(String descricao);

}
