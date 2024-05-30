<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.educacion.negocio.*"%>
<%
	int cod = Integer.parseInt(request.getParameter("editarId"));
	String nom = request.getParameter("editarNom");
	String des= request.getParameter("editarLink");
	Curso c = new Curso(cod, nom, des);
	if(c.Modificar(c)){
		response.sendRedirect("accesoCursos.jsp");
	}else{
		response.sendRedirect("index.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>