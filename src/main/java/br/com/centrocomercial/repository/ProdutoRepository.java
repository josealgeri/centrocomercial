package br.com.centrocomercial.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.centrocomercial.model.Produto;

public interface ProdutoRepository extends JpaRepository<Produto, Long> {

	
}
