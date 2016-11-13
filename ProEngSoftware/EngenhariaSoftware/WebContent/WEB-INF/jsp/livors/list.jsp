<%@page import="model.Cliente"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css" />
<title>Lista</title>
</head>
<body>
<jsp:include page="../template/top.jsp" />

<div class="container">
	<h2 >Lista de Livros</h2>
	<div style="width:980px; height: 600px; overflow: auto;">   

<table class="table table-bordered">
			<tr>
				<th width="150px">id</th>
				<th width="150px">nomeAutor</th>
				<th width="150px">nomeLivro</th>
				<th width="150px">nomeEditora</th>
		<th>Ações</th>
			</tr>
		<tbody>
		
			<c:forEach items="${lista}" var="livors">
				<tr>
					<td>${livors.id}</td>
					<td>${livors.nomeAutor}</td>
					<td>${livors.nomeLivro}</td>
					<td>${livors.nomeEditora}</td>
					<td><a href="editar/${livors.id}" >
					Editar</a> | <a href="deletar/${livors.id}">Remover</a></td>
				</tr>
			</c:forEach>
</tbody>
</table>
</div>
</div>

<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="./js/bootstrap.min.js"></script>
	<jsp:include page="../template/rodape.jsp" />

</body>
</html>