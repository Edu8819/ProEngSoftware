
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 
 <link rel="stylesheet" type="text/css" href="./css/bootstrap.min.css" />
 <link rel="stylesheet" type="text/css" href="./css/bootstrap-theme.min.css" />
 <script src="./js/bootstrap.min.js"></script>
 <script src="./js/jquery-1.11.3.min.js"></script>
 
</head>

<body>
<br><br>

<div class="container">
	<div class="row">
		<div class="col-ms-4">
   			<div class="col-sm-6 col-md-4">
			</div>
		</div>
		<div class="col-ms-4">
			<div class="col-sm-6 col-md-4">
				<form action="autentica" method="post" class="form-horizontal"
				role="form">

				<div style="margin-bottom: 25px" class="input-group">
					<span class="input-group-addon"><i class="glyphicon glyphicon-user">
					</i></span> <input type="text" name="usuario.nome" 
					placeholder="Login" class="form-control" placeholder="Usuário">
				</div>

				<div style="margin-bottom: 25px" class="input-group">
					<span class="input-group-addon"><i class="glyphicon glyphicon-lock">
					</i></span> <input type="password" name="usuario.senha" 
					class="form-control" placeholder="Senha">
				</div>
				<div class="input-group">
					<div class="checkbox"></div>
				</div>
				<div class="col-sm-12 controls">

					<button type="submit">Login</button>
					<a href="${pageContext.request.contextPath}/">Sair</a>
						${msg}
				</div>
			</form>
${msg}
		</div>
	</div>
		<div class="col-ms-4">
			<div class="col-sm-6 col-md-4">
				
			</div>
		</div>
	</div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
 <script src="./js/bootstrap.min.js"></script>
<jsp:include page="../template/rodape.jsp" />
</body>
</html>