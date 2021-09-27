<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro de Empresa</title>
</head>
	<body>
		<c:if test="${not empty empresa}">
			Empresa "${ empresa }" cadastrada com sucesso! 
			<br />
			<br />
			<form action="/gerenciador/listaEmpresas" method="post">
				
				<button type="submit" name="lista">
					Listar Empresas
				</button>
			</form>
		</c:if>
		
		<c:if test="${empty empresa}">
			Nenhuma empresa cadastrada!
		</c:if>
	</body>
</html>

