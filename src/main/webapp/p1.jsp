<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true"
	import="com.educacion.negocio.*" import="com.educacion.seguridad.*"%>
<%
String nombre="Fundamentos de Programación, Algoritmos en java y JavaScript";
Curso c = new Curso();
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
		<section>
			<div class="contenedor">
				<h2>Fundamentos de Programación, Algoritmos en java y JavaScript</h2>
				<img class="imagen_curso" alt="p1" src="resources/p1.png">
			</div>
			
			<div class="contenedor">
				<div class="cuadro">
					<h3>Detalles</h3>
					<table>
					<tr>
						<th>Creador: </th>
						<td>Cristian David Henao Hoyos</td>
					</tr>
					<tr>
						<th>Duración: </th>
						<td>8hr 41min</td>
					</tr>
					<tr>
						<th>Descripción: </th>
						<td>Aprende a programar con practicas desde cero, pasando del seudocodigo y diagramas de flujo a un lenguaje de programación</td>
					</tr>
					<tr>
						<th>Idioma original: </th>
						<td>Español</td>
					</tr>
					</table>
					
				</div>
				<div class="cuadro">
					<h3>Logros</h3>
					<ol style="list-style-type: square;">
						<li>Identificar los fundamentos de la programación</li>
						<li>Conocer las estructuras algoritmicas o estructuras de control usadas en los lenguajes de programación</li>
						<li>Resolver problemas mediante algoritmos en pseudocodigo y diagramas de flujo</li>
						<li>Realizar pruebas de escritorio a nuestros algoritmos</li>
						<li>Usar una herramienta como DFD para verificar nuestros algoritmos en diagrama de flujo</li>
					</ol>
				</div>
			</div>
			<div class="contenedor">
				<div class="cuadro">
					<h3>Plataforma</h3>
					<img style="width: 50%;" alt="udemy" src="resources/udemy.png">
					<p>La misión de Udemy es crear nuevas posibilidades para cualquier persona y organización. Su tienda virtual 
					global ofrece una amplia biblioteca en varios idiomas que incluye miles de cursos impartidos por expertos del mundo real.</p>
				</div>
				<div class="cuadro">
					<h3>Acceso</h3>
					<p>Haz click<a href="<%=c.cursoIndividual(nombre) %>">aquí.</a></p>
				</div>
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
<%
}
%>