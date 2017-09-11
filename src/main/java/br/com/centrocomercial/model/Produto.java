package br.com.centrocomercial.model;

import java.io.Serializable;
import java.math.BigDecimal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Data;

@Entity
@Data
public class Produto implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idproduto",unique=true, nullable = false)
	private Long idproduto;

	@Column(length = 150, nullable = true)
	private String descricao;
	
	@Column(length = 1,nullable = true)
	private String tipoitem;
	
	@Column(length = 60,nullable = true)
	private String modelo;
	
	@Column(precision = 15, scale = 2 )
	private BigDecimal vlrcusto;
	
	@Column(precision = 15, scale = 2 )
	private BigDecimal vlrvenda;
	
	@Column(length = 128,nullable = true)
	private Double codbarra;
	
	@Column(length = 1,nullable = true)
	private String flagmovestoque;
	
	@Column(precision = 15, scale = 2 )
	private BigDecimal qtdminima;

	@Column(length = 1,nullable = true)
	private String tipoestoque;

	@Column(length = 1,nullable = true)
	private String flaginativo;
	
	@Column(nullable = true)
	private Long idcategoria;
		
	@Column(length = 2,nullable = true)
	private String siglaunidade;
	
	public Produto() {
		super();
	}
}
