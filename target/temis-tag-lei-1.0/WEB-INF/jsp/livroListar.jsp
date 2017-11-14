<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<table border="1">
		<tr>
			<td>id: </td>
			<td>Titulo: </td>
			<td>Editora: </td>
			<td>Autor: </td>
			<td>Editar: </td>
		</tr>
		<c:forEach items="${todosLivros}" var="livro">
			<tr>
				<td>${livro.id }</td>
				<td>${livro.titulo }</td>
				<td>${livro.editora.nome}</td>
				<td>${livro.autor}</td>
				<td><a href="/livro/editar/${livro.id}">Editar</a>
		</tr>
		</c:forEach>
	</table>

</body>
</html>