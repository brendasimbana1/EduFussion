<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.educacion.seguridad.*"%>
<%
	String id = request.getParameter("id_us");
	String nombre = request.getParameter("nombre_us");
	String direccion = request.getParameter("direccion_us");
	String clave= request.getParameter("clave_us");
	Usuario u = new Usuario();
	
	String resultado = u.registroAlumno(Integer.parseInt(id), nombre, direccion, clave);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%=resultado%>
	<jsp:forward page="login.jsp">
		<jsp:param name="error" value="No se registro user." />
	</jsp:forward>
</body>
</html>