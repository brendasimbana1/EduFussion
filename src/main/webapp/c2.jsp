<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true"
	import="com.educacion.negocio.*" import="com.educacion.seguridad.*"%>
<%
String nombre="Introducci�n a la Qu�mica: Reacciones y relaciones";
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
				<h2>Introducci�n a la Qu�mica: Reacciones y relaciones</h2>
				<img class="imagen_curso" alt="c1" src="resources/c2.png">
			</div>
			
			<div class="contenedor">
				<div class="cuadro">
					<h3>Detalles</h3>
					<table>
					<tr>
						<th>Instructor: </th>
						<td>Prof. Dorian A. Canelas</td>
					</tr>
					<tr>
						<th>Instituci�n: </th>
						<td>Duke University</td>
					</tr>
					<tr>
						<th>Duraci�n: </th>
						<td>16hrs</td>
					</tr>
					<tr>
						<th>Descripci�n: </th>
						<td>Tiene el objetivo de preparar a los estudiantes para estudios posteriores en qu�mica, 
						necesarios para muchas profesiones cient�ficas, sanitarias y pol�ticas.</td>
					</tr>
					<tr>
						<th>Idioma original: </th>
						<td>Ingl�s</td>
					</tr>
					</table>
					
				</div>
				<div class="cuadro">
					<h3>Logros</h3>
					<ol style="list-style-type: square;">
						<li>Conceptos b�sicos relacionados con las reacciones qu�micas</li>
						<li>La estequiometr�a</li>
						<li>La tabla peri�dica</li>
						<li>Las tendencias peri�dicas </li>
						<li>La nomenclatura</li>
						<li>La resoluci�n de problemas qu�micos</li>
					</ol>
				</div>
			</div>
			<div class="contenedor">
				<div class="cuadro">
					<h3>Plataforma</h3>
					<img style="width: 50%;" alt="coursera" src="resources/coursera.jpg">
					<p>Coursera es una plataforma de educaci�n y aprendizaje de cursos Online Masivos en Abierto (MOOC) destinada 
					de estudiantes de todo el mundo y en la que participan distintas universidades y empresas.</p>
				</div>
				<div class="cuadro">
					<h3>Acceso</h3>
					<p>Haz click<a href="<%=c.cursoIndividual(nombre) %>">aqu�.</a></p>
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