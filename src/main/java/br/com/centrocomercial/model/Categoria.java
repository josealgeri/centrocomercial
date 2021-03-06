package br.com.centrocomercial.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Data;

@Entity
@Data
public class Categoria implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idcategoria",unique=true, nullable = false)
	private Long idcategoria;

	@Column(length = 45, nullable = false)
	private String descricao;
	
	@Column(length = 1,nullable = false)
	private String flaginativo;
	
	public Categoria() {
		super();
	}
}
