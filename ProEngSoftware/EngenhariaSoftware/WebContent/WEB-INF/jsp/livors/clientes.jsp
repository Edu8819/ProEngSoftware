<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:out value="${data}"></c:out>
	<form method="post" action="${pageContext.request.contextPath}/livors/salva">
		
		nome<input type="text" name="cliente.nome">
	
		<input type="submit" value="salvar">
	</form>
	<c:forEach var="listClien" items="${clientes}">
	<p>${listClien.getNome()}</p>
	
	</c:forEach>
</body>
</html>