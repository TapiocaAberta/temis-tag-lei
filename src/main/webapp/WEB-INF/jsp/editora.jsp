<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cadastrar Editora</title>
</head>
<body>

	<form action="/editora/salvar" method="post">
		<table>

			<tr>
				<td>Nome</td>
				<td><input type="text" id="nome" name="nome" value="${nome}"></td>
			</tr>
		</table>
		
		<input id="register" type="submit" value="Enviar" />
	
	</form>

</body>
</html>