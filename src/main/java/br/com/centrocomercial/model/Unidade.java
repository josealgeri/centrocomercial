package br.com.centrocomercial.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

import org.hibernate.annotations.ColumnDefault;

import lombok.Data;

@Entity
@Data
public class Unidade {

/*	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id; 
*/
	@Id
	//@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(length = 2, nullable = false)
	private String sigla;

	@Column(length = 45, nullable = false)
	private String descricao;
	
	@Column(length = 2, nullable = true)
	@ColumnDefault("F")
	private String flaginativo;
	
}
