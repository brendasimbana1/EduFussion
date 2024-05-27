<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" session="true"
	import="com.educacion.negocio.*, com.educacion.seguridad.*"%>
<%
Categoria categoria = new Categoria();
String combo = categoria.mostrarCategoria();
String usuario;
HttpSession sesion = request.getSession();
if (sesion.getAttribute("usuario") == null || (Integer) sesion.getAttribute("perfil") != 2) //Se verifica si existe la variable
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
<html lang="es">
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
	<div>
	<form class="form_inicio" action="respuestaCat.jsp" method="post">
			<div class="username">
				<label>Escoja la categoria: </label>
				<%=combo%>
			</div>
			<input class="boton_enviar" type="submit" value="Enviar">
		</form>
	</div>	
		<div style="margin: 5%;">
			<form class="form_inicio" action="respuestaTeclear.jsp" method="post">
				<div class="username">
					<label>Buscar por nombre: </label> <input id="buscar" type="text"
						placeholder="Ingrese su b�squeda" name="buscar" required>
				</div>
				<input class="boton_enviar" type="submit" value="Enviar">
			</form>
		</div>

	</main>
	<footer class="footer">
		<ul>
			<a href="https://www.facebook.com/brenda.simbana.5/">Facebook</a>
			<a href="https://www.instagram.com/brendasimbana/">Instagram</a>
			<a href="https://github.com/brendasimbana1">GitHub</a>
		</ul>
	</footer>
</body>
</html>
<%
}
%>