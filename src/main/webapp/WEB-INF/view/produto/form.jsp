<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags/layout" prefix="layout"%>

<layout:template>
	<jsp:attribute name="cssEspecificos"></jsp:attribute>
	<jsp:attribute name="scriptsEspecificos"></jsp:attribute>
<jsp:body>
<div>
	<ol class="breadcrumb">
		<li><a href="/centrocomercial/"><i class="fa fa-home"></i> Início</a></li>
		<li><a href="/centrocomercial/produto/"><i class="fa fa-table"></i> Lista de Produtos</a></li>
		<li class="active"><i class="fa fa-edit"></i> Cadastro de Produto</li>
	</ol>
</div>
<div class="col-md-10">
          <!-- general form elements -->
          <div class="box box-primary">
            <div class="box-header with-border">
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <form role="form" action="<c:url value="/produto/salvar" />" method="POST">
	         <div class="box-body">
	         </div>
	           
             <div class="form-row">
             	<div class="form-group col-md-3">
             		<img src="/img/Ean13.png" alt="" style="width: 170px; height: 45px; margin-right: 5px; float: left;">
             	</div>
             	<div class="form-group col-md-9">
             		<p><b><font size="3">PRODUTO PRÓPRIO</font></b></p>
					<hr align="left" style="height: 1px; border: none; color: #000; background-color: #000; margin-top: 0px; margin-bottom: 0px;" />
		 		</div>
             </div>

             <div class="form-row">
				<div class="form-group col-md-2">
	                <label for="idproduto">Código</label> 
	                <input type="text" id="idproduto" name="idproduto" value="${produto.idproduto}" readonly class="form-control"  />
	         	 </div>
	    		 
	    		 <div class="form-group col-md-7">
	    	        <label for="nome">Descrição</label>	
			        <input type="text" id="descricao" name="descricao" value="${produto.descricao}"	placeholder="Descrição do Produto..." class="form-control" required />
		
				</div>
			 </div>					
	   		 	

             <div class="form-row">
             	<div class="form-group col-md-2">
               		<label for="tipoitem">Tipo do Item</label>
	  			    	<select>
					      <option value="P">Produto</option>
					      <option value="K">Kit</option>
					      <option value="I">Insumo</option>
						</select>
				</div>
			   
		      	<div class="form-group col-md-7">
 				    <label for="siglaunidade">Unidade</label>
		  			    <select>
					      <option value="P">Produto</option>
					      <option value="K">Kit</option>
					      <option value="I">Insumo</option>
					    </select>
				</div>				   
			
				<div class="form-group col-md-2">	
				   <label for="modelo">Modelo
				   <input type="text" id="modelo" name="modelo" maxlength=60 value="${produto.modelo}"	placeholder="Modelo..." class="form-control"/>  			    
				   </label>
				 </div>
			</div>	    
				    
			   <label for="vlrcusto">Custo
			   <input type="number" step=0.01 id="vlrcusto" name="custo" value="${produto.vlrcusto}"	placeholder="R$ 0,00" class="form-control"/>  			    
			   </label> 
			    
			   <label for="vlrvenda">Venda
			   <input type="number" step=0.01 id="vlrvenda" name="vlrvenda" value="${produto.vlrvenda}"	placeholder="R$ 0,00" class="form-control"/>  			    
			   </label> 
			 
			   <label for="codbarra">Venda
			   <input type="text" id="codbarra" name="codbarra" value="${produto.codbarra}"	placeholder="EAN/UCC..." class="form-control"/>  			    
			   </label> 
			 
			    
		
			 
			 
			 <div class="box-footer">
              	<button type="reset" class="btn btn-primary">Limpar</button>
                <button type="submit" class="btn btn-primary">Salvar</button>
             </div>
              
            </form>
          </div>
</div>

</jsp:body>
</layout:template>













