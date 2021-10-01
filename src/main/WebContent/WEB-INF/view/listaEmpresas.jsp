<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.util.List, br.com.alura.gerenciador.modelo.Empresa" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista de Empresas</title>
</head>
<body>

	Usuário Logado: ${ usuarioLogado.login }
	
	<c:import url="logout-parcial.jsp" />
		
	<c:if test="${not empty empresa}">
		Empresa "${ empresa }" cadastrada com sucesso! 
		<br />
		<br />
	</c:if>

	Lista de Empresas: <br />
	
	<ul>
		<c:forEach items="${empresas}" var="empresa">
			<li>
				${empresa.nome} -
				<fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy" />
				<a href="/gerenciador/entrada?acao=MostraEmpresas&id=${empresa.id}">editar</a>
				<a href="/gerenciador/entrada?acao=RemoveEmpresa&id=${empresa.id}">remover</a>
			</li>
		</c:forEach>
	</ul>
	
	<form method="post" action="/gerenciador/entrada?acao=NovaEmpresaForm">
		<button type="submit">
			Cadastrar Nova Empresa
		</button>
	</form>
	
</body>
</html>