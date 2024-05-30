<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.educacion.negocio.*"%>
    <%
	

	String id = request.getParameter("Id");
	String cat = request.getParameter("cmbCategoria");
	String nombre = request.getParameter("Nombre");
	String descripcion = request.getParameter("Descripcion");
	Curso c = new Curso();
	
	String resultado = c.ingresarCurso(Integer.parseInt(id), Integer.parseInt(cat), nombre, descripcion);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%=resultado%>
	<jsp:forward page="accesoCursos.jsp">
		<jsp:param name="error" value="No se realizo." />
	</jsp:forward>

</body>
</html>