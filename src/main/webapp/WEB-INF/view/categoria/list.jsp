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
        <a href="#!" class="breadcrumb">Lista de Categorias</a>
      </div>
    </div>
  </nav>
  <div class="container">
		<p />
  <a href="<c:url value="/categoria/novo"/>"
				class="btn-floating btn-small waves-effect waves-light"><i
				class="material-icons">add</i></a>


		<p />
	<table border="1" class="highlight">
		<thead>
			<tr>
				<th>Código</th>
				<th>Descrição</th>
				<th>Ativo</th>	
				<th>Ações</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="categoria" items="${categorias}">
				<tr>
					<td>${categoria.idcategoria}</td>
					<td>${categoria.descricao}</td>
					<td>${categoria.flaginativo}</td>	
					<td><a href="<c:url value="/categoria/${categoria.idcategoria}"/>"><i
									class="material-icons ">edit</i></a>
						<a href="<c:url value="/categoria/remover/${categoria.idcategoria}"/>"><i
									class="material-icons red-text">delete</i></a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	</div>

</jsp:body>
</layout:template>













