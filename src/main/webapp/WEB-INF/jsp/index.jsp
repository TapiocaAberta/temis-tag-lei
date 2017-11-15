
<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">

<head>
<c:url value="/css/main.css" var="jstlCss" />
<link href="${jstlCss}" rel="stylesheet" />
</head>

<h3>Quantidade de leis: ${totalLeisClassificdas}</h3>

<body>

	<form action="/salvar" method="post">
		<table>

			<tr>
				<td>Ementa</td>
				<td>
					<select style="width: 1200px; height: 30px;" name="data">
							<c:forEach items="${todasLeis}" var="lei">
								<option value="${lei.id}" title="${lei.tipo} - ${lei.text}">${lei.tipo} - ${lei.text}</option>
							</c:forEach>
					</select>
				</td>
			</tr>
			
			<tr>
				<td>Classifica��o</td>
				<td>
					<select style="width: 300px; height: 30px;" name="tag">
						<option value="NOMEACAO">Nomea��o</option>
					   	<option value="UTILIDADE_PUBLICA">Utilidade P�blica</option>
					   	<option value="SAUDE">Sa�de</option>
					    <option value="MANUTENCAO">Manuten��o</option>
					    <option value="EDUCACAO">Educa��o</option>
					    <option value="ACESSIBILIDADE">Acessibilidade</option>
					    <option value="DATA_COMEMORATIVA">Data Comemorativa</option>
					    <option value="CAUSAS_ANIMAIS">Causas Animais</option>
					    <option value="TRANSPORTE">Transporte</option>
					    <option value="SEGURANCA">Seguran�a</option>
					    <option value="ORCAMENTO">Or�amento</option>
					    <option value="ALTERACAO_LEI">Altera��o de Lei</option>
					    <option value="CONGRATULACAO">Congratula��o</option>
					    <option value="MEIO_AMBIENTE">Meio Ambiente</option>
					    <option value="URBANIZACAO">Urbaniza��o</option>
					    <option value="TRABALHO">Trabalho</option>
					    <option value="CONSUMIDOR">Consumidor</option>
					    <option value="OUTRO">Outro</option>
					</select>
				</td>
			</tr>

		</table>

		<input id="register" type="submit" value="Enviar" />

	</form>
	
	<br><br>
	
	<table border="1">
		<thead>
			<tr>
				<td>Classe</td>
				<td>Descri��o</td>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>Nomea��o</td>
				<td>Nomea��o de Pessoas, Rua/Av/Pra�a, Nome de Escola etc</td>
			</tr>
			
			<tr>
				<td>Utilidade P�blica</td>
				<td>Declaro Utilidade P�blca ...</td>
			</tr>
			
			<tr>
				<td>Sa�de</td>
				<td>Tudo Relacionado a Sa�de que n�o seja nomea��o de hospital etc</td>
			</tr>
			
			<tr>
				<td>Manuten��o</td>
				<td>Manuten��o de Rua, Avenida, Escola, etc</td>
			</tr>
			
			<tr>
				<td>Educa��o</td>
				<td>Tudo Relacionado a Escola que n�o seja nomea��o de escola</td>
			</tr>
			
			<tr>
				<td>Acessibilidade</td>
				<td>Tudo para acessibidade de PNE</td>
			</tr>
			
			<tr>
				<td>Data Comemorativa</td>
				<td>Cria��o de Data Comemorativa</td>
			</tr>
			
			<tr>
				<td>Causas Animais</td>
				<td>Tudo relacionado � Animais</td>
			</tr>
			
			<tr>
				<td>Transporte</td>
				<td>Tudo Relacioando a transporte</td>
			</tr>
			
			<tr>
				<td>Seguran�a</td>
				<td>Tudo relacionado a Seguran�a</td>
			</tr>
			
			<tr>
				<td>Or�amento</td>
				<td>Tudo relacionado a libera��o de verba, entrada e saida de R$ etc</td>
			</tr>
			
			<tr>
				<td>Altera��o de Leis</td>
				<td>Altera a lei bl� bl� bl�</td>
			</tr>
			
			<tr>
				<td>Congratula��o</td>
				<td>Parabeniza ou congratula alguma pessoa ou institui��o</td>
			</tr>
			
			<tr>
				<td>Meio Ambiente</td>
				<td>Sobre Meio ambiente, Descarte de lixo etc</td>
			</tr>
			
			<tr>
				<td>Urbaniza��o</td>
				<td>Sobre urbaniza��o, posse de terra etc</td>
			</tr>
			
			<tr>
				<td>Outro</td>
				<td>N�o se encaixa em nenhum</td>
			</tr>
						
		</tbody>
	</table>

</body>

</html>