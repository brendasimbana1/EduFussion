<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true"%>
    <%
    int seleccionado = Integer.parseInt(request.getParameter("select"));
    String accion = request.getParameter("accion");
    if (accion.equals("Eliminar")) {
    	response.sendRedirect("eliminar.jsp?opcion=" + seleccionado);
    } else if (accion.equals("Editar")) {
    	response.sendRedirect("buscar.jsp?opcion=" + seleccionado);
    } else {
        // Manejar el caso de acción desconocida
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