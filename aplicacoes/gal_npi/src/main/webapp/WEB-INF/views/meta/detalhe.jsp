<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="datatables"
	uri="http://github.com/dandelion/datatables"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html>
<head>
<title>Detalhe da Meta</title>
<jsp:include page="../fragments/htmlHead.jsp" />
</head>
<body>
	<div id="container" style="width: 1000px; margin: 0 auto;">
		<jsp:include page="../fragments/header.jsp" />

		<c:if test="${not empty error}">
			<div class="alert alert-danger alert-dismissible" role="alert">
				<button type="button" class="close" data-dismiss="alert">
					<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
				</button>
				<c:out value="${error}"></c:out>
			</div>
		</c:if>
		<c:if test="${not empty info}">
			<div class="alert alert-info alert-dismissible" role="alert">
				<button type="button" class="close" data-dismiss="alert">
					<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
				</button>
				<c:out value="${info}"></c:out>
			</div>
		</c:if>

		<div style="text-align: center;">
			<label class="control-label" style="font-size: 18px;">${titulo.nome}</label>
		</div>
		<br />
		<br />











		<c:if test="${empty metaCalculada}">
			<div class="alert alert-warning" role="alert">Não há metas
				cadastrados.</div>
		</c:if>

		<c:if test="${not empty metaCalculada}">
			<table 	class="table table-striped">
				<!-- here should go some titles... -->
				<tr>
					<th>Curso</th>
					<th>Disciplina</th>
					<th>Bibliografia</th>
					<th>Curriculo</th>
				</tr>
				<c:forEach items="${metaCalculada.detalhePar}" var="par">
					<tr>
						<td><c:out value="${par.curso}" /></td>
						<td><c:out value="${par.disciplina}" /></td>
						<td><c:out value="${par.tipoBibliografia}" /></td>
						<td><c:out value="${par.curriculo}" /></td>
					</tr>
				</c:forEach>
			</table>



			<div style="text-align: center;">
				<label class="control-label" style="font-size: 20px;">Metas
					Detalhadas Impares</label>
			</div>
			<table 	class="table table-striped">
				<!-- here should go some titles... -->
				<tr>
					<th>Curso</th>
					<th>Disciplina</th>
					<th>Bibliografia</th>
					<th>Curriculo</th>
				</tr>
				<c:forEach items="${metaCalculada.detalheImpar}" var="impar">
					<tr>
						<td><c:out value="${impar.curso}" /></td>
						<td><c:out value="${impar.disciplina}" /></td>
						<td><c:out value="${impar.tipoBibliografia}" /></td>
						<td><c:out value="${impar.curriculo}" /></td>
					</tr>
				</c:forEach>
			</table>
			
		</c:if>

		<jsp:include page="../fragments/footer.jsp" />
	</div>
</body>
</html>