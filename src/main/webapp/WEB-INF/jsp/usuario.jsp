<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cadastrar Usuario</title>
</head>
<body>

<p>${msgErr}</p>

<form action="/usuario/salvar" method="post">
		<table>

			<tr>
				<td>login</td>
				<td><input type="text" id="login" name="login" value="${login }"></td>
			</tr>
			<tr>
				<td>senha</td>
				<td><input type="password" id="senha" name="senha"></td>
			</tr>
		</table>
		
		<input id="cadastrar" type="submit" value="Cadastrar" />
	
	</form>

</body>
</html>