package br.com.centrocomercial.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Data;

@Entity
@Data
public class CategoriaProd {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long idcategoria;

	@Column(length = 45, nullable = false)
	private String descricao;
	
	@Column(length = 1, nullable = false)
	private String flaginativo;
	

}
