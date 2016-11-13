<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Inicio</title>
 
 <link rel="stylesheet" type="text/css" href="./css/bootstrap.min.css" />
 <link rel="stylesheet" type="text/css" href="./css/bootstrap-theme.min.css" />
 <script src="./js/bootstrap.min.js"></script>
 <script src="./js/jquery-1.11.3.min.js"></script>
 
</head>
<body>
 
<div class="container">
	<div class="row">
		<div class="col-ms-4">
   			
		</div>
		<div class="col-ms-4">
			
		</div>
		<div class="col-ms-4">
			<div class="container">
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      		<ul class="nav navbar-nav navbar-right">
        		<li class="dropdown">
          		<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Logar<span class="caret"></span></a>
          			<ul class="dropdown-menu">
            			<li><a href="${pageContext.request.contextPath}/entrar">Admin</a></li>
            			<li><a href="${pageContext.request.contextPath}/entra">Usuario</a></li>
          			</ul>
        		</li>
      		</ul>
    	</div>
    	</div>
	</div>
</div>

</div>

<div class="container">
<div class="jumbotron">
  <h1>Sejam Bem Vindos!</h1>
  
</div>
</div>
 
 <div class="container">
 	<div class="row">
		
   		<jsp:include page="../template/rodape.jsp" />
	
	</div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="./js/bootstrap.min.js"></script>
 
</body>

</html>