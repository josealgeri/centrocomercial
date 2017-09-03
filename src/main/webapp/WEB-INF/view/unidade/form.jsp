<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags/layout" prefix="layout"%>
<layout:template>
	<jsp:attribute name="cssEspecificos"></jsp:attribute>
	<jsp:attribute name="scriptsEspecificos">
	<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
	</jsp:attribute>
	<jsp:body>
	
<div>
	<ol class="breadcrumb">
		<li><a href="/"><i class="fa fa-home"></i> Início</a></li>
		<li><a href="/unidade/"><i class="fa fa-table"></i> Lista de Unidades de Medida</a></li>
		<li class="active"><i class="fa fa-edit"></i> Cadastro de unidades de Medida</li>
	</ol>
</div>

<div class="col-md-6">
          <!-- general form elements -->
	<div class="box box-primary">
            <!-- /.box-header -->
		<!-- form start -->
    	<form role="form" action="<c:url value="/unidade/salvar" />" method="POST">
        	<div class="box-body">
            	<div class="form-group">
                	<label for="sigla">Sigla:</label> 
                	<input type="text" id="sigla" name="sigla"	value="${unidade.sigla}"
                	placeholder="Sigla.."  required class="form-control"/>
                </div>
                <div class="form-group">
                	<label for="descricao">Descrição:</label> 
                	<input type="text" id="descricao" name="descricao" value="${unidade.descricao}" 
					placeholder="Descrição da Unidade..." class="form-control" required/>
                </div>
                <div class="form-group">
                	<input type="checkbox" class="filled-in" id="flaginativo" value="${unidade.flaginativo}" />
      				<label for="flaginativo">Inativo</label>
                </div>
			</div>
            <div class="box-footer">
				<button type="reset" class="btn btn-primary">Limpar</button>
                <button type="submit" class="btn btn-primary">Salvar</button>
			</div>
		</form>
	</div>
</div>
</jsp:body>
</layout:template>
