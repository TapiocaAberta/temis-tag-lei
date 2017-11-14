<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="/livro/salvar" method="post" enctype="multipart/form-data">
		<table>
		
			<tr>
				<td>
					<input type="hidden" name="id" id="id" value="${livro.id}">
				</td>
			</tr>

			<tr>
				<td>Titulo</td>
				<td><input type="text" id="titulo" name="titulo"
					value="${livro.titulo}"></td>
			</tr>

			<tr>
				<td>Autor</td>
				<td><input type="text" id="autor" name="autor"
					value="${livro.autor}"></td>
			</tr>

			<tr>
				<td>Editora</td>
				<td><select name="editora">
						<c:forEach var="editora" items="${todasEditoras}">
							<option value="${editora.id}" ${editora.id == livro.editora.id ? 'selected="selected"' : ''}>${editora.nome}</option>
						</c:forEach>
				</select></td>
			</tr>
			
			<tr>
				<td>
					<input type="file" name="file" id="file" accept="image/*">
				</td>
			</tr>

		</table>

		<input id="register" type="submit" value="Enviar" />

	</form>

</body>
</html>