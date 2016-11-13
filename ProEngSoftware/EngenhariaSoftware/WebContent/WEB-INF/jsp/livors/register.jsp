
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
</head>
<title>Registar</title>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css" />

</head>

<body>
	<jsp:include page="../template/top.jsp" />


	<div class="container">
		<div class="row">
			<div class="col-ms-4">
				<div class="col-sm-6 col-md-4"></div>
			</div>
			<div class="col-ms-4">
				<div class="col-sm-6 col-md-4" align="left">${msg}</div>
			</div>
			<div class="col-ms-4">
				<div class="col-sm-6 col-md-4"></div>
			</div>
		</div>
	</div>


	<div class="container">
		<div class="row">
			<div class="col-ms-4">
				<div class="col-sm-6 col-md-4"></div>
			</div>
			<div class="col-ms-4">

				<div class="col-sm-6 col-md-4">
					<form action="salvar" method="post" class="form-horizontal"
						role="form">

						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"> </i></span> <input type="text"
								name="livors.nomeAutor" placeholder="nomeAutor"
								class="form-control" placeholder="nomeAutor">
						</div>

						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"> </i></span> <input type="text"
								name="livors.nomeLivro" placeholder="nomeLivro"
								class="form-control" placeholder="nomeLivro">
						</div>

						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"> </i></span> <input type="text"
								name="livors.nomeEditora" placeholder="editora"
								class="form-control" placeholder="editora">
						</div>

						<div class="input-group">
							<div class="checkbox"></div>
						</div>
						<div class="col-sm-12 controls">

							<button type="submit">Salvar</button>
							<a href="${pageContext.request.contextPath}/principal">Sair</a>
						</div>
					</form>
				</div>
			</div>
			<div class="col-ms-4">
				<div class="col-sm-6 col-md-4"></div>
			</div>
		</div>
	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="./js/bootstrap.min.js"></script>
	<jsp:include page="../template/rodape.jsp" />
</body>
</html>