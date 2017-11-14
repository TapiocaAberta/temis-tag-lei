
<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">

<head>
	<c:url value="/css/main.css" var="jstlCss" />
	<link href="${jstlCss}" rel="stylesheet" />
</head>

<body>

	<a href="/login">Login</a>

	<br>
	<br>

	<form action="/livro/filtrar" method="post">
		<input id="titulo" name="titulo"> <input id="register" type="submit" value="Buscar" />
	</form>

	<br>
	<br>

	<table border="1">
		<tr>
			<td>id:</td>
			<td>Titulo:</td>
			<td>Editora:</td>
			<td>Autor:</td>
		</tr>
		<c:forEach items="${todosLivros}" var="livro">
			<tr>
				<td>${livro.id }</td>
				<td>${livro.titulo }</td>
				<td>${livro.editora.nome}</td>
				<td>${livro.autor}</td>
				<td><img alt="" src="${livro.foto}" height="200" width="200">
				</td>
			</tr>
		</c:forEach>
	</table>
        
	<script type="text/javascript" src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		
</body>

</html>