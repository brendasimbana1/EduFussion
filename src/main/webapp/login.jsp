<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
<script src="https://kit.fontawesome.com/2536a6a1c6.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="stylesheet/style.css">
</head>

<body>
	<header class="titulo">
		<h1>
			EduFussion<span> "Conocimiento en tus manos"</span>
		</h1>
	</header>

	<section class="navega">
		<nav aria-describedby="nombre-instrucciones">
			<div id="nombre-instrucciones" class="sr-only">Barra de
				navegación principal</div>
			<ul role="navigation">
				<li role="item"><a href="index.jsp">Inicio</a></li>
				<li role="item"><a href="login.jsp">Iniciar sesión</a></li>
			</ul>
		</nav>
	</section>
	<main>
		<form class="form_inicio" action="verificarLogin.jsp" method="post">
			<h2>Inicio de sesión</h2>
			<div class="username">

				<label for="usuario">Ingrese su usuario:</label> <input id="usuario"
					type="email" placeholder="Usuario" name="usuario"
					aria-describedby="nombre-instrucciones" aria-required="true"
					required>
				<div id="nombre-instrucciones" class="sr-only">Por favor,
					ingrese su usuario.</div>
				<span class="icono-input"> <i class="fa-regular fa-user "></i>
				</span>
			</div>
			<div class="username">
				<label for="clave">Ingrese su contraseña:</label> <input id="clave"
					type="password" placeholder="Contraseña" name="clave"
					aria-describedby="nombre-instrucciones" aria-required="true"
					required>
				<div id="nombre-instrucciones" class="sr-only">Por favor,
					ingrese su clave.</div>
				<span class="icono-input"> <i class="fa-solid fa-lock"></i>
				</span>
			</div>

			<input class="boton_enviar" aria-label="Iniciar" type="submit"
				value="Iniciar">
			<div class="registrarse">
				<label>¿No tienes cuenta?</label> <a href="registro.jsp">Registrarse</a>
			</div>
		</form>
	</main>
	<footer class="footer" aria-label="Pie de página">
		<ul>
			<li><a href="https://www.facebook.com/brenda.simbana.5/">Facebook</a></li>
			<li><a href="https://www.instagram.com/brendasimbana/">Instagram</a></li>
			<li><a href="https://github.com/brendasimbana1">GitHub</a></li>
		</ul>
	</footer>

</body>
</html>