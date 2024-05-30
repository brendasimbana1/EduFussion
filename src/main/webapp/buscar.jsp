<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" session="true"
	import="com.educacion.negocio.*, com.educacion.seguridad.*"%>
<%
Categoria categoria = new Categoria();
String combo = categoria.mostrarCategoria();
int cod = Integer.parseInt(request.getParameter("opcion"));
Curso c = new Curso();
c.buscarEdicion(cod);
String usuario;
HttpSession sesion = request.getSession();
if (sesion.getAttribute("usuario") == null || (Integer) sesion.getAttribute("perfil") != 1) //Se verifica si existe la variable
{
	System.out.println("noUser");
%>
<jsp:forward page="login.jsp">
	<jsp:param name="error" value="Debe registrarse en el sistema." />
</jsp:forward>
<%
} else {
usuario = (String) sesion.getAttribute("usuario"); //Se devuelve los valores de atributos
int perfil = (Integer) sesion.getAttribute("perfil");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>EduFussion</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Major+Mono+Display&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Karla:ital,wght@0,200..800;1,200..800&family=Major+Mono+Display&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="stylesheet/style.css">
<script src="js/script.js"></script>
</head>
<body>
	<header class="titulo">
		<h1>
			EduFussion<span> "Conocimiento en tus manos"</span>
		</h1>
	</header>
	<%
	Pagina pag = new Pagina();
	String menu = pag.mostrarMenu(perfil);
	out.print(menu);
	%>
	<main>
			<form class="form_inicio" action="editar.jsp" method="post">
			
				<h2>Editar Curso</h2>
				<div class="username">
					<label> Identificador: </label> <input type="number"
						placeholder="Ingrese el id" name="editarId" value="<%= c.getId() %>" readonly>
				</div>
				<div class="username">
					<label> Categoria: </label> 
					<output><%= c.getId_cat() %></output>
					
				</div>
				<div class="username">
					<label>	Nombre: </label>
					<input type="text"
						placeholder="Ingrese el nombre" name="editarNom" value="<%= c.getNombre() %>" required>
				</div>
				<div class="username">
					<label> Link: </label> <input type="text"
						placeholder="Ingrese el link" name="editarLink" value="<%= c.getDescripcion()%>" required>
				</div>
				<input class="boton_enviar" type="submit" value="Actualizar">
		</form>
		
	</main>
</body>
</html>
<%
}
%>