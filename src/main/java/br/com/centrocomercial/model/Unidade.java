package br.com.centrocomercial.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

import lombok.Data;

@Entity

@Data
public class Unidade implements Serializable {

/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

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
	
	@Column(length = 2, nullable = false)
	private String flaginativo;
	
}
