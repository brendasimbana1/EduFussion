<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" session="true"
	import="com.educacion.seguridad.*"%>
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
</head>
<body>
	<header class="titulo">
		<h1>
			EduFussion<span> "Conocimiento en tus manos"</span>
		</h1>
	</header>
	<%
	String usuario;
	HttpSession sesion = request.getSession();
	if (sesion.getAttribute("usuario") == null) //Se verifica si existe la variable
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
	Pagina pag = new Pagina();
	String menu = pag.mostrarMenu(perfil);
	out.print(menu);
	}
	%>
	<h4>
		Bienvenido/a,
		<%
	usuario = (String) sesion.getAttribute("usuario");
	out.println(usuario);
	%>
	</h4>
	<main>
		<section>
			<div class="contenedor">
				<div class="cuadro">
					<h3>Novedades</h3>
					<p>En EduFussion, estamos comprometidos con ofrecerles la mejor experiencia de aprendizaje 
					en línea. Es por eso que nos complace anunciar que, en lo que queda del año, estaremos agregando 
					nuevas categorías de aprendizaje para ampliar aún más las oportunidades de educación disponibles 
					en nuestra plataforma.</p>
				</div>
				<img style="width: 10%; height:10%; margin:0; vertical-align: middle;" alt="calendario" src="resources/calendario.jpg">
			</div>
		</section>
		
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