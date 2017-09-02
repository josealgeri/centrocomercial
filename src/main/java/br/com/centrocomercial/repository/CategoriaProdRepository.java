package br.com.centrocomercial.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.centrocomercial.model.CategoriaProd;

public interface CategoriaProdRepository extends JpaRepository<CategoriaProd, Long> {

	public List<CategoriaProd> findByNomeContainingIgnoreCase(String descricao);

}
