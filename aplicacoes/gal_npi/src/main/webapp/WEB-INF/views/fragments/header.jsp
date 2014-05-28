<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="page-header">
  <h1>GAL <small>Gest�o de Aquisi��o de Livros</small></h1>
</div>
<nav class="navbar navbar-default" role="navigation">
	<div class="container-fluid">
		<div class="navbar-header">
	      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
	        <span class="sr-only">Toggle navigation</span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	      </button>
	      <a class="navbar-brand" href="<c:url value='/'/>">Home</a>
	    </div>
	    
	    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	    	<ul class="nav navbar-nav">
		        <li class="dropdown">
		          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Disciplina<b class="caret"></b></a>
		          <ul class="dropdown-menu">
		            <li><a href="<c:url value='/disciplina/adicionar.htm'/>">Adicionar</a></li>
		            <li class="divider"></li>
		            <li><a href="<c:url value='/disciplina/listar.htm'/>">Listar</a></li>
		          </ul>
		        </li>
		        <li class="dropdown">
		          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Curso<b class="caret"></b></a>
		          <ul class="dropdown-menu">
		            <li><a href="<c:url value='/curso/adicionar.htm'/>">Adicionar</a></li>
		            <li class="divider"></li>
		            <li><a href="<c:url value='/curso/listar.htm'/>">Listar</a></li>
		          </ul>
		        </li>
		        <li class="dropdown">
		          <a href="#" class="dropdown-toggle" data-toggle="dropdown">T�tulo<b class="caret"></b></a>
		          <ul class="dropdown-menu">
		            <li><a href="<c:url value='/titulo/adicionar.htm'/>">Adicionar</a></li>
		            <li class="divider"></li>
		            <li><a href="<c:url value='/titulo/listar.htm'/>">Listar</a></li>
		          </ul>
	    </div>
	</div>
</nav>
