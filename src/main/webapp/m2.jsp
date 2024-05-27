<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true"
	import="com.educacion.negocio.*" import="com.educacion.seguridad.*"%>
<%
String nombre="Ecuaciones Diferenciales";
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
				<h2>Ecuaciones Diferenciales</h2>
				<img class="imagen_curso" alt="m2" src="resources/m2.png">
			</div>
			
			<div class="contenedor">
				<div class="cuadro">
					<h3>Detalles</h3>
					<table>
					<tr>
						<th>Creador: </th>
						<td>Prof. A. B. Shinde</td>
					</tr>
					<tr>
						<th>Duraci�n: </th>
						<td>1hr 18min</td>
					</tr>
					<tr>
						<th>Descripci�n: </th>
						<td>Ecuaci�n diferencial de primer orden y primer grado: ecuaci�n diferencial exacta y lineal, ecuaci�n diferencial de Bernoulli</td>
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
						<li>Concepto de ecuaci�n diferencial ordinaria</li>
						<li>Orden y grado de ecuaci�n diferencial</li>
						<li>Soluci�n general y particular de ecuaci�n diferencial</li>
						<li>Formaci�n de ecuaci�n diferencial</li>
						<li>Ecuaci�n diferencial de Bernoulli</li>
					</ol>
				</div>
			</div>
			<div class="contenedor">
				<div class="cuadro">
					<h3>Plataforma</h3>
					<img style="width: 50%;" alt="udemy" src="resources/udemy.png">
					<p>La misi�n de Udemy es crear nuevas posibilidades para cualquier persona y organizaci�n. Su tienda virtual 
					global ofrece una amplia biblioteca en varios idiomas que incluye miles de cursos impartidos por expertos del mundo real.</p>
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