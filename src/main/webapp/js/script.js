document.addEventListener('DOMContentLoaded', function() {
    const enlaces = document.querySelectorAll('a');
    
    enlaces.forEach(function(enlace) {
        enlace.addEventListener('click', function(event) {
            if (enlace.getAttribute('href') === '#') {
                event.preventDefault(); // Evita que el enlace realice su acción por defecto
                alert('Página informativa en construcción, puede acceder desde el enlace.');
            }
        });
    });
});

document.addEventListener('DOMContentLoaded', function() {
    const tabla = document.getElementById('cursos');

    if (tabla.getElementsByTagName('tr').length === 1) { // 1 porque la primera fila es la cabecera de la tabla
        alert('No se encontraron cursos.');
        // Regresar a la página anterior
        window.history.back();
    }
});
