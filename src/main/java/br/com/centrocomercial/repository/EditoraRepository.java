package br.com.centrocomercial.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.centrocomercial.model.Editora;

public interface EditoraRepository extends JpaRepository<Editora, Long> {

	public List<Editora> findByNomeContainingIgnoreCase(String nome);

}
