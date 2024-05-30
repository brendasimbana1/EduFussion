<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="com.educacion.negocio.*, com.educacion.seguridad.*"%>
<%
Usuario user = new Usuario();
Curso c = new Curso();
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
</head>

<body>
	<header class="titulo">
		<h1>
			EduFussion<span> "Conocimiento en tus manos"</span>
		</h1>
	</header>
	<section class="navega">
		<nav aria-label="Barra de navegación principal">
			<ul>
				<li><a href="index.jsp">Inicio</a></li>
				<li><a href="login.jsp">Iniciar sesión</a></li>
			</ul>
		</nav>
	</section>
	<main>
		<form class="form_inicio" action="respuestaRegistro.jsp"
			method="post">

			<h2>Nuevo Usuario</h2>
			<div class="username">
				<label for="id_us"> Identificador: </label> <input type="number"
					placeholder="Ingrese el id" id="id_us" name="id_us" value="<%= user.id_cliente() %>" readonly>
			</div>
			<div class="username">
				<label for="nombre_us">Nombre: </label> <input type="text"
					placeholder="Ingrese el nombre" id="nombre_us" name="nombre_us" required>
			</div>
			<div class="username">
				<label for="direccion_us"> E-mail: </label> <input type="text"
					placeholder="Ingrese la dirección" id="direccion_us" name="direccion_us" required>
			</div>
			<div class="username">
				<label for="clave_us"> Contraseña: </label> <input type="password" 
					placeholder="Ingrese la contraseña" id="clave_us" name="clave_us" required>
			</div>
			<div>
				<input class="boton_enviar" type="submit" value="Enviar">
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