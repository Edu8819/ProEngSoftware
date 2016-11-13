<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html>
<head>

<title>Página Inicial</title>

<link rel="stylesheet" type="text/css" href="./css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="./css/bootstrap-theme.min.css" />
<script src="./js/bootstrap.min.js"></script>
<script src="./js/jquery-1.11.3.min.js"></script>

</head>

<body>

	<div class="container">

		<div class="row">
			<nav class="navbar navbar-default">
				<div class="container-fluid">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse"
							data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand"
							href="${pageContext.request.contextPath}/principal">Home</a>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown" role="button" aria-haspopup="true"
								aria-expanded="false">Livros <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a
										href="${pageContext.request.contextPath}/livors/novo">Cadastrar</a></li>
									<li><a
										href="${pageContext.request.contextPath}/livors/listar">Listar</a></li>
									<li><a
										href="${pageContext.request.contextPath}/livors/editar">Editar</a></li>
									<li><a
										href="${pageContext.request.contextPath}/livors/deletar">Excluir</a></li>
								</ul></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown" role="button" aria-haspopup="true"
								aria-expanded="false">Locator <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a
										href="${pageContext.request.contextPath}/locator/novoLoc">Cadastrar</a></li>
									<li><a
										href="${pageContext.request.contextPath}/locator/listarLoc">Listar</a></li>
									<li><a
										href="${pageContext.request.contextPath}/locator/editarLoc">Editar</a></li>
									<li><a
										href="${pageContext.request.contextPath}/locator/deletarLoc">Excluir</a></li>
								</ul></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown" role="button" aria-haspopup="true"
								aria-expanded="false">Reservas <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a
										href="${pageContext.request.contextPath}/reservations/novoRes">Cadastrar</a></li>
									<li><a
										href="${pageContext.request.contextPath}/reservations/listarRes">Listar</a></li>
									<li><a
										href="${pageContext.request.contextPath}/reservations/editarRes">Editar</a></li>
									<li><a
										href="${pageContext.request.contextPath}/reservations/deletarRes">Excluir</a></li>
								</ul></li>
						</ul>
					</div>
					<!-- /.navbar-collapse -->
				</div>
				<!-- /.container-fluid -->
			</nav>
		</div>
	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="./js/bootstrap.min.js"></script>

	<jsp:include page="../template/rodape.jsp" />

</body>
</html>