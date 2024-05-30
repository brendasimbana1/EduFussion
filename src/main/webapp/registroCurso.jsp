<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="true"
	import="com.educacion.negocio.*, com.educacion.seguridad.*"%>
<%
Categoria categoria = new Categoria();
String combo = categoria.mostrarCategoria();
Curso c = new Curso();
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
		<form class="form_inicio" action="respuestaCurso.jsp" method="post">

			<h2>Nuevo Curso</h2>
			<div class="username">
				<label for="Id"> Identificador: </label> <input type="number"
					placeholder="Ingrese el id" id="Id" name="Id"
					value="<%=c.id_curso()%>" readonly>
			</div>
			<div class="username">
				<label for="cmbCategoria"> Categoria: </label>
				<%=combo%>
			</div>
			<div class="username">
				<label for="Nombre">Nombre: </label> <input type="text"
					placeholder="Ingrese el nombre" aria-label="Nombre"
					aria-required="true" id="Nombre" name="Nombre" required>
			</div>
			<div class="username">
				<label for="Descripcion"> Link de acceso: </label> <input
					type="text" placeholder="Ingrese el link" aria-label="Descripcion"
					aria-required="true" id="Descripcion"
					name="Descripcion" required>
			</div>
			<div>
				<input aria-label="Enviar" class="boton_enviar" type="submit"
					value="Enviar">
			</div>

		</form>
	</main>
	<footer class="footer">
		<ul>
			<li><a href="https://www.facebook.com/brenda.simbana.5/">Facebook</a></li>
			<li><a href="https://www.instagram.com/brendasimbana/">Instagram</a></li>
			<li><a href="https://github.com/brendasimbana1">GitHub</a></li>
		</ul>
	</footer>
</body>
</html>
<%
}
%>