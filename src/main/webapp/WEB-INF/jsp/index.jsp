
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
				<td>Classificação</td>
				<td>
					<select style="width: 300px; height: 30px;" name="tag">
						<option value="NOMEACAO">Nomeação</option>
					   	<option value="UTILIDADE_PUBLICA">Utilidade Pública</option>
					   	<option value="SAUDE">Saúde</option>
					    <option value="MANUTENCAO">Manutenção</option>
					    <option value="EDUCACAO">Educação</option>
					    <option value="ACESSIBILIDADE">Acessibilidade</option>
					    <option value="DATA_COMEMORATIVA">Data Comemorativa</option>
					    <option value="CAUSAS_ANIMAIS">Causas Animais</option>
					    <option value="TRANSPORTE">Transporte</option>
					    <option value="SEGURANCA">Segurança</option>
					    <option value="ORCAMENTO">Orçamento</option>
					    <option value="ALTERACAO_LEI">Alteração de Lei</option>
					    <option value="CONGRATULACAO">Congratulação</option>
					    <option value="MEIO_AMBIENTE">Meio Ambiente</option>
					    <option value="URBANIZACAO">Urbanização</option>
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
				<td>Descrição</td>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>Nomeação</td>
				<td>Nomeação de Pessoas, Rua/Av/Praça, Nome de Escola etc</td>
			</tr>
			
			<tr>
				<td>Utilidade Pública</td>
				<td>Declaro Utilidade Públca ...</td>
			</tr>
			
			<tr>
				<td>Saúde</td>
				<td>Tudo Relacionado a Saúde que não seja nomeação de hospital etc</td>
			</tr>
			
			<tr>
				<td>Manutenção</td>
				<td>Manutenção de Rua, Avenida, Escola, etc</td>
			</tr>
			
			<tr>
				<td>Educação</td>
				<td>Tudo Relacionado a Escola que não seja nomeação de escola</td>
			</tr>
			
			<tr>
				<td>Acessibilidade</td>
				<td>Tudo para acessibidade de PNE</td>
			</tr>
			
			<tr>
				<td>Data Comemorativa</td>
				<td>Criação de Data Comemorativa</td>
			</tr>
			
			<tr>
				<td>Causas Animais</td>
				<td>Tudo relacionado à Animais</td>
			</tr>
			
			<tr>
				<td>Transporte</td>
				<td>Tudo Relacioando a transporte</td>
			</tr>
			
			<tr>
				<td>Segurança</td>
				<td>Tudo relacionado a Segurança</td>
			</tr>
			
			<tr>
				<td>Orçamento</td>
				<td>Tudo relacionado a liberação de verba, entrada e saida de R$ etc</td>
			</tr>
			
			<tr>
				<td>Alteração de Leis</td>
				<td>Altera a lei blá blá blá</td>
			</tr>
			
			<tr>
				<td>Congratulação</td>
				<td>Parabeniza ou congratula alguma pessoa ou instituição</td>
			</tr>
			
			<tr>
				<td>Meio Ambiente</td>
				<td>Sobre Meio ambiente, Descarte de lixo etc</td>
			</tr>
			
			<tr>
				<td>Urbanização</td>
				<td>Sobre urbanização, posse de terra etc</td>
			</tr>
			
			<tr>
				<td>Outro</td>
				<td>Não se encaixa em nenhum</td>
			</tr>
						
		</tbody>
	</table>

</body>

</html>