package br.com.centrocomercial.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.centrocomercial.model.Unidade;

public interface UnidadeRepository extends JpaRepository<Unidade, String> {
	public List<Unidade> findOneBySigla(String sigla);

}
