var controller = {};
$(document).ready(function(){
    $.ajax({
        url: "/Proyects",
        method: "GET",
        datatype: "json",
        success: function (res) {
            if (res.codigo_usuario == 1) {
                if (res.proyectos == 1) {
                    window.location.href ="/aviso.html";
                }
                window.location.href = "/proyectos.html";

            } else {
                if (res.codigo_usuario == 2) {
                    if (res.proyectos < 11) {
                        window.location.href = "/proyectos.html";
                    }
                    window.location.href = "/aviso.html";

                } else {
                    if (res.codigo_usuario == 3) {
                        if (res.proyectos < 26) {
                            window.location.href = "/proyectos.html";
                        }
                        window.location.href = "/aviso.html";
                    } else {
                        if (res.codigo_usuario == 4) {
                            if (res.proyectos < 51) {
                                window.location.href = "/proyectos.html";
                            }
                            window.location.href = "/aviso.html";
                        }
                    }
                }
            }
        },
        error: function (error) {
        console.error(error);
        }
    });
});