
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
</head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>RegistarLoc</title>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css" />

</head>

<body>
	<br>
	<jsp:include page="../template/top.jsp" />

	<div class="container">
		<div class="row">
			<div class="col-ms-4">
				<div class="col-sm-6 col-md-4"></div>
			</div>
			<div class="col-ms-4">
				${msg}
				<div class="col-sm-6 col-md-4">
					<form action="cadastra" method="post" class="form-horizontal"
						role="form4">

						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"> </i></span> <input type="text"
								name="locator.nome" placeholder="Nome" class="form-control"
								placeholder="nome">
						</div>

						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"> </i></span> <input type="text"
								name="locator.email" placeholder="Email" class="form-control"
								placeholder="email">
						</div>

						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"> </i></span> <input type="text"
								name="locator.senha" placeholder="Senha" class="form-control"
								placeholder="senha">
						</div>

						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"> </i></span> <input type="text"
								name="locator.telefone" placeholder="Telefone"
								class="form-control" placeholder="telefone">
						</div>

						<div class="input-group">
							<div class="checkbox"></div>
						</div>
						<div class="col-sm-12 controls">

							<button class="btn btn-primary" type="submit">Salvar</button>
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