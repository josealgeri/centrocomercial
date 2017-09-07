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
		<li><a href="/centrocomercial/"><i class="fa fa-home"></i> início</a></li>
		<li class="active"><i class="fa fa-table"></i> Lista de Unidades de Medida</li>
	</ol>
</div>
	<div class="box">
		<div class="box-header " >
			<a href="<c:url value="/unidade/novo"/>" class="btn-floating btn-lg waves-effect waves-light" data-toggle="tooltip" title="Novo Registro">
				<span class="glyphicon glyphicon-plus"></span>
			</a>
		</div>
		<div class="box-body ">
        	<table id="unidades" class="table table-bordered table-hover "	>
        	<thead>
                <tr>
					<th>Código</th>
					<th>Descrição</th>
					<th>Ativo</th>	
					<th>Ações</th>
				</tr>
			</thead>
            <tbody>
				<c:forEach var="unidade" items="${unidades}">
					<tr>
						<td>${unidade.sigla}</td>
						<td>${unidade.descricao}</td>
						<td>${unidade.flaginativo}</td>	
						<td><a	href="<c:url value="/unidade/${unidade.sigla}"/>" class="btn-floating btn-lg waves-effect waves-light">
						<span class="glyphicon glyphicon-edit" data-toggle="tooltip" title="Editar Registro"></span></a>
						<a 	href="<c:url value="/unidade/remover/${unidade.sigla}"/>" class="btn-floating btn-lg waves-effect waves-light">
						<span class="glyphicon glyphicon-trash" data-toggle="tooltip" title="Apagar Registro"></span></a></td>
					</tr>
				</c:forEach>
			</tbody>
			</table>
		</div>
	</div>
</jsp:body>
</layout:template>













