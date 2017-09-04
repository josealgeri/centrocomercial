<%@ tag pageEncoding="utf-8"%>
<%@ attribute name="cssEspecificos" fragment="true" required="false"%>
<%@ attribute name="scriptsEspecificos" fragment="true" required="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Centro Comercial | Gerencial</title>

<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">

<!-- Font Awesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">

<link rel="stylesheet" href="<c:url value="/static/bootstrap/css/bootstrap.min.css"/>">
<link rel="stylesheet" href="<c:url value="/static/css/ionicons.min.css"/>">
<link rel="stylesheet" href="<c:url value="/static/dist/css/AdminLTE.min.css"/>">
<link rel="stylesheet" href="<c:url value="/static/dist/css/skins/_all-skins.min.css"/>">
<link rel="stylesheet" href="<c:url value="/static/plugins/iCheck/flat/blue.css"/>">
<link rel="stylesheet" href="<c:url value="/static/plugins/morris/morris.css"/>">
<link rel="stylesheet" href="<c:url value="/static/plugins/jvectormap/jquery-jvectormap-1.2.2.css"/>">
<link rel="stylesheet" href="<c:url value="/static/plugins/datepicker/datepicker3.css"/>">
<link rel="stylesheet" href="<c:url value="/static/plugins/daterangepicker/daterangepicker.css"/>">
<link rel="stylesheet" href="<c:url value="/static/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css"/>">
<jsp:invoke fragment="cssEspecificos"></jsp:invoke>

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>
<body class="hold-transition skin-blue sidebar-mini fixed">
	<div class="wrapper">

		<header class="main-header">
			<!-- Logo -->
			<a href="/" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
				<span class="logo-mini"><b>C</b>Com</span> <!-- logo for regular state and mobile devices -->
				<span class="logo-lg"><b>Centro</b>Comercial</span>
			</a>
			<!-- Header Navbar: style can be found in header.less -->
			<nav class="navbar navbar-static-top">
				<!-- Sidebar toggle button-->
				<a href="#" class="sidebar-toggle" data-toggle="offcanvas"
					role="button"> <span class="sr-only">Alternar navegação</span>
				</a>

				<div class="navbar-custom-menu">
					<ul class="nav navbar-nav">
					
						<!-- User Account: style can be found in dropdown.less -->
						<li class="dropdown user user-menu"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"> <img
								src="<c:url value="/static/dist/img/user2-160x160.jpg"/>" class="user-image"
								alt="User Image"> <span class="hidden-xs">José</span>
						</a>
							<ul class="dropdown-menu">
								<!-- User image -->
								<li class="user-header"><img
									src="<c:url value="/static/dist/img/user2-160x160.jpg"/>" class="img-circle"
									alt="User Image">

									<p>
										José Algeri - Web Developer <small>Usuário desde
											Nov. 2012</small>
									</p></li>
								<!-- Menu Body -->
								
								<!-- Menu Footer-->
								<li class="user-footer">
									<div class="pull-left">
										<a href="#" class="btn btn-default btn-flat">Configurações</a>
									</div>
									<div class="pull-right">
										<a href="#" class="btn btn-default btn-flat">Sair</a>
									</div>
								</li>
							</ul></li>
						<!-- Control Sidebar Toggle Button -->
						<li><a href="#" data-toggle="control-sidebar"><i
								class="fa fa-gears"></i></a></li>
					</ul>
				</div>
			</nav>
		</header>
		<!-- Left side column. contains the logo and sidebar -->
		<aside class="main-sidebar">
			<!-- sidebar: style can be found in sidebar.less -->
			<section class="sidebar">
				<!-- Sidebar user panel -->
				<div class="user-panel">
					<div class="pull-left image">
						<img src="<c:url value="/static/dist/img/user2-160x160.jpg"/>" class="img-circle"
							alt="User Image">
					</div>
					<div class="pull-left info">
						<p>José</p>
						<a href="#"><i class="fa fa-circle text-success"></i> Online</a>
					</div>
				</div>
				<!-- search form -->
				<form action="#" method="get" class="sidebar-form">
					<div class="input-group">
						<input type="text" name="q" class="form-control"
							placeholder="Pesquisar..."> <span class="input-group-btn">
							<button type="submit" name="search" id="search-btn"
								class="btn btn-flat">
								<i class="fa fa-search"></i>
							</button>
						</span>
					</div>
				</form>
				<!-- /.search form -->
				<!-- sidebar menu: : style can be found in sidebar.less -->
				<ul class="sidebar-menu">
					<li class="header">Menu Principal</li>
					<li class="treeview"><a href="#"> <i class="fa fa-share"></i>
							<span>Cadastros</span> <span class="pull-right-container">
								<i class="fa fa-angle-left pull-right"></i>
						</span>
					</a>
						<ul class="treeview-menu">
							<li><a href="#"><i class="fa fa-circle-o"></i>Empresa</a></li>
							<li><a href="#"><i class="fa fa-circle-o"></i>Produtos
									<span class="pull-right-container"> <i
										class="fa fa-angle-left pull-right"></i>
								</span> </a>
								<ul class="treeview-menu">
									<li><a href="#"><i class="fa fa-circle-o"></i>Produto</a></li>
									<li><a href="<c:url value="/unidade/"/>"><i class="fa fa-circle-o"></i>Unidades de Medida</a></li>
									<li><a href="<c:url value="/categoria/"/>"><i class="fa fa-circle-o"></i>Categoria</a></li>
									<li><a href="#"><i class="fa fa-circle-o"></i>Complementares<span class="pull-right-container"> <i
												class="fa fa-angle-left pull-right"></i>
										</span> </a>
										<ul class="treeview-menu">
											<li><a href="#"><i class="fa fa-circle-o"></i>Complementos do <p/>Produto</a></li>
											<li><a href="#"><i class="fa fa-circle-o"></i>Locais de Estoque</a></li>
										</ul></li>
								</ul></li>
							
						</ul></li>
				</ul>
			</section>
			<!-- /.sidebar -->
		</aside>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->

			<!-- Main content -->
			<section class="content">
	
				
			<jsp:doBody />
				
				
				
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
		<footer class="main-footer">
			<div class="pull-right hidden-xs">
				<b>Versão</b> 0.1
			</div>
			<strong>Copyright &copy; 2017 <a
				href="http://innovangola.com">InnovAngola</a>.
			</strong> Todos os direitos reservados.
		</footer>

		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark">
			<!-- Create the tabs -->
			<ul class="nav nav-tabs nav-justified control-sidebar-tabs">
				<li><a href="#control-sidebar-home-tab" data-toggle="tab"><i
						class="fa fa-home"></i></a></li>
				<li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i
						class="fa fa-gears"></i></a></li>
			</ul>
			<!-- Tab panes -->
			<div class="tab-content">
				<!-- Home tab content -->
				<div class="tab-pane" id="control-sidebar-home-tab">

					<!-- /.control-sidebar-menu -->

				
					<!-- /.control-sidebar-menu -->

				</div>
				<!-- /.tab-pane -->
				<!-- Stats tab content -->
				<div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab
					Content</div>
			</div>
		</aside>
		<!-- /.control-sidebar -->
		<!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
		<div class="control-sidebar-bg"></div>
	</div>
	<!-- ./wrapper -->
	
	<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
	<script>
		$.widget.bridge('uibutton', $.ui.button);
	</script>
	
	<script src="<c:url value="/static/js/raphael-min.js"/>"></script>
	<script src="<c:url value="/static/js/moment.min.js"/>"></script>
	<script src="<c:url value="/static/js/jquery-ui.min.js"/>"></script>
	<script src="<c:url value="/static/plugins/daterangepicker/daterangepicker.js"/>"></script>
	<script src="<c:url value="/static/plugins/datepicker/bootstrap-datepicker.js"/>"></script>
	<script src="<c:url value="/static/bootstrap/js/bootstrap.min.js"/>"></script>
	<script src="<c:url value="/static/plugins/jQuery/jquery-2.2.3.min.js"/>"></script>
	<script src="<c:url value="/static/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"/>"></script>
	<script src="<c:url value="/static/plugins/slimScroll/jquery.slimscroll.min.js"/>"></script>
	<script src="<c:url value="/static/plugins/fastclick/fastclick.js"/>"></script>
	<script src="<c:url value="/static/dist/js/app.min.js"/>"></script>
	<script src="<c:url value="/static/dist/js/pages/dashboard.js"/>"></script>
	<script src="<c:url value="/static/dist/js/demo.js"/>"></script>
	<script src="<c:url value="/static/plugins/morris/morris.min.js"/>"></script>
	<script src="<c:url value="/static/plugins/sparkline/jquery.sparkline.min.js"/>"></script>
	<script src="<c:url value="/static/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"/>"></script>
	<script src="<c:url value="/static/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"/>"></script>
	<script src="<c:url value="/static/plugins/knob/jquery.knob.js"/>"></script>
	
	<jsp:invoke fragment="scriptsEspecificos"></jsp:invoke>
</body>
</html>
