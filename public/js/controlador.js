//Se cargo el nombre del usuario y la foto en inicio de sesion
function seleccionarUsuario(username, foto) {
    $("#nombreusuario").val(username);
    $("#fotousuario").attr("src", foto);
}

$(document).ready(function () {
    $.ajax({
        url: "/usuarios",
        method: "POST",
        dataType: "json",
        success: function (res) {
            console.log(res);
            for (var i = 0; i < res.length; i++) {
                $("#nombreusuario").append(`<h5>${res[i].username}</h5>`);
                $("#fotousuario").append(`${res[i].foto}`);
            }
        },
        error: function (error) {
            console.error(error);
        }
    });
})