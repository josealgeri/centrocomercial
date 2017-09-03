<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags/layout" prefix="layout"%>
<layout:template>
	<jsp:attribute name="cssEspecificos"></jsp:attribute>
	

	<jsp:attribute name="scriptsEspecificos">
	
	</jsp:attribute>
	<jsp:body>
	

<div>
	<ol class="breadcrumb">
					<li><a href="/"><i class="fa fa-home"></i> início</a></li>
					<li class="active"><i class="fa fa-table"></i> Lista de Categorias</li>
				</ol>
</div>
	
<div class="box">
            <div class="box-header " >
              
              <a href="<c:url value="/categoria/novo"/>"
				class="btn-floating btn-lg waves-effect waves-light" data-toggle="tooltip" title="Novo Registro"><span class="glyphicon glyphicon-plus"></span></a>
            </div>
            
            <!-- /.box-header -->
            
            <div class="box-body ">
              <table id="categorias" class="table table-bordered table-hover "	>
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
					<td><a	href="<c:url value="/categoria/${categoria.idcategoria}"/>" class="btn-floating btn-lg waves-effect waves-light"><span class="glyphicon glyphicon-edit"></span></a>
						<a
								href="<c:url value="/categoria/remover/${categoria.idcategoria}"/>" class="btn-floating btn-lg waves-effect waves-light"><span class="glyphicon glyphicon-trash"></span></a></td>
				</tr>
			</c:forEach>
		</tbody>
                
              </table>
            </div>
            <!-- /.box-body -->
          </div>


<script>
  $(function () {
   
    $('#categorias').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false
    });
  });
</script>
<script>
$(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip();   
});
</script>





<!-- jQuery 2.2.3 -->
<script src="<c:url value="/static/plugins/jQuery/jquery-2.2.3.min.js"/>"></script>
<!-- Bootstrap 3.3.6 -->
<script src="<c:url value="/static/bootstrap/js/bootstrap.min.js"/>"></script>
<!-- DataTables -->
<script src="<c:url value="/static/plugins/datatables/jquery.dataTables.min.js"/>"></script>
<script src="<c:url value="/static/plugins/datatables/dataTables.bootstrap.min.js"/>"></script>
<!-- SlimScroll -->
<script src="<c:url value="/static/plugins/slimScroll/jquery.slimscroll.min.js"/>"></script>
<!-- FastClick -->
<script src="<c:url value="/static/plugins/fastclick/fastclick.js"/>"></script>
<!-- AdminLTE App -->
<script src="<c:url value="/static/dist/js/app.min.js"/>"></script>
<!-- AdminLTE for demo purposes -->
<script src="<c:url value="/static/dist/js/demo.js"/>"></script>
<!-- page script -->




</jsp:body>
</layout:template>













