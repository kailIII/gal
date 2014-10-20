<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="datatables"
	uri="http://github.com/dandelion/datatables"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>



<!DOCTYPE html>
<html>
<head>
<title>Metas</title>
<jsp:include page="../fragments/htmlHead.jsp" />
<link href="<c:url value="../resources/css/gal.css" />" rel="stylesheet">
</head>
<body>
	<div id="container" style="width: 1000px; margin: 0 auto;">

		<jsp:include page="../fragments/header.jsp" />
		<a href="<c:url value="/meta/downloadMetaDetalhada"></c:url>">Download
			do relatorio contendo o detalhamento das metas</a> <br /> <br /> <br />
		<input id="idCurso" type="hidden" value="${idCurso}" /> <select
			id="seleciona">
			<option value="-1">Todos os Cursos</option>
			<c:forEach items="${cursos}" var="curso">
				<option value="${curso.id}">${curso.nome}</option>
			</c:forEach>
		</select>
		<%--         <h1>Resultados ${resultados}</h1> --%>
		<%-- 		<c:forEach var="country" items="${resultados}"> --%>
		<%-- 		    Country: ${country.key}  - Capital: ${country.value} --%>
		<%-- 		</c:forEach> --%>

        <datatables:table id="resultado" data="${resultados.value}" cdn="true"
				row="resultado" theme="bootstrap2" cssClass="table table-striped">
				
				<datatables:column title="Nome do Título">
					<c:out value="${resultado.titulo.nome}"></c:out>
				</datatables:column>
        
		</datatables:table>


		<jsp:include page="../fragments/footer.jsp" />



	</div>
</body>
</html>