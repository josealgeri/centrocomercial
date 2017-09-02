package br.com.centrocomercial.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.centrocomercial.model.Categoria;

public interface CategoriaRepository extends JpaRepository<Categoria, Long> {



}
