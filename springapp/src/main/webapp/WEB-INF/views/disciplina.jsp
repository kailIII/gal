<%@ page language="java" contentType="text/html; charset=iso-8859-1"
	pageEncoding="iso-8859-1"%>
<%@ include file="/WEB-INF/views/include.jsp"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"/>
    <title><fmt:message key="title"/></title>
    
<jsp:include page="fragments/headTag.jsp" />

<body>

	<header class="container">

		<h1 id="inicio">Prot�tipo Disciplina</h1>

	</header>


	<div class="containerPrincipal">

		<aside class="leftBox">
			<a class="buttonAdd" href="adicionarDisciplina.htm"><p class = "textoMenu">Adicionar Disciplina</p></a>
		</aside>

		<section id="detalhesDisciplina">
			<p>
				Sauda��es, agora s�o
				<c:out value="${model.now}" />
			</p>
			<br /> <br />		
		
			<table id="tabelaDisciplinas">
				<tr class = "rows">
					<th class = "colsRight">C�digo Disciplina</th>
					<th class = "colsRight">Nome Disciplina</th>
					<th class ="colsRight">A��es</th>
				</tr>

				<c:forEach items="${model.products}" var="prod">
    		    
					<tr class = "rows" id = "<c:out value="${prod.id}"></c:out>">
						
						<th class = "colsRight" id = "<c:out value="${prod.id}"></c:out>"><c:out value="${prod.code}"></c:out>
						</th>
						
						<th class = "colsLeft" id = "<c:out value="${prod.id}"></c:out>"><c:out value="${prod.nome}"></c:out></th>
						<th class ="colsRight">
						
						<!--<button class = "buttonUpdate" id = "<c:out value="${prod.id}"></c:out>" ></button>-->
						  <a class = "buttonTable" href ="<c:url value = "/${prod.id}/editDisciplina.htm"></c:url>"></a> 
						  <a class = "buttonTable" href ="<c:url value = "/${prod.id}/deleteDisciplina.htm"></c:url>"></a>
						  <a class = "buttonTable" href =""></a>
						
						</th>
					</tr>
				</c:forEach>

			</table>

		</section>

	</div>

</body>
</html>