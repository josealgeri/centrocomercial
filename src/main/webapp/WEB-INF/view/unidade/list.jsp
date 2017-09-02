<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags/layout" prefix="layout"%>
<layout:template>
	<jsp:attribute name="cssEspecificos"></jsp:attribute>
	<jsp:attribute name="scriptsEspecificos">
	
	 <!--Import materialize.css-->
      <link type="text/css" rel="stylesheet"
			href="css/materialize.min.css" media="screen,projection" />
	
	
	</jsp:attribute>
	<jsp:body>
	
	<nav>
    <div class="nav-wrapper">
      <div class="col s12">
        <a href="<c:url value="/"/>" class="breadcrumb">Início</a>
        <a href="#!" class="breadcrumb">Lista de Unidades</a>
      </div>
    </div>
  </nav>
  <div class="container">
		<p />
  <a href="<c:url value="/unidade/novo"/>"
				class="btn-floating btn-small waves-effect waves-light"><i
				class="material-icons">add</i></a>


		<p />
	<table border="1" class="highlight">
		<thead>
			<tr>
				<th>Sigla</th>
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
					<td>
					<c:if test="${unidade.flaginativo == null }">
						Ativo
					</c:if>
					<c:if test="${unidade.flaginativo != null }">
						Inativo
					</c:if>



</td>
					<td><a href="<c:url value="/unidade/${unidade.sigla}"/>"><i
									class="material-icons ">edit</i></a>
						<a href="<c:url value="/unidade/remover/${unidade.sigla}"/>"><i
									class="material-icons red-text">delete</i></a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	</div>

</jsp:body>
</layout:template>













