document.addEventListener('DOMContentLoaded', function() {
    const enlaces = document.querySelectorAll('a');
    
    enlaces.forEach(function(enlace) {
        enlace.addEventListener('click', function(event) {
            if (enlace.getAttribute('href') === '#') {
                event.preventDefault(); // Evita que el enlace realice su acción por defecto
                alert('Página informativa en construcción, puede acceder desde el enlace.');
            } else if (enlace.getAttribute('accion') === 'Eliminar') {
                var confirmacion = confirm("¿Estás seguro que quieres eliminar?");
                if (!confirmacion) {
                    event.preventDefault(); // Cancela el enlace si no se confirma la eliminación
                }
            }
        });
    });

    const tabla = document.getElementById('cursos');
    if (tabla.getElementsByTagName('tr').length === 1) {
        alert('No se encontraron cursos.');
        // Regresar a la página anterior
        window.history.back();
    }
    
});

