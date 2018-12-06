//Se cargo todo SELECTOR DE PAICES en el index
$(document).ready(function(){
    $.ajax({
        url: "/paices",
        method:"GET",
        dataType:"json",
        success:function(res){
            //console.log(res);
            for (var i=0;i<res.length;i++){
                $("#pais").append(`<option value="${res[i].codigo_pais}">${res[i].nombre_pais}</option>`);
            };
        },
        error:function(error){
            console.error(error);
        }
    });
});

$("#registrar").click(function(){
	var parametros = `nombrecompleto=${$("#nombrecompleto").val()}&nombreusuario=${$("#nombreusuario").val()}&correo=${$("#correo").val()}&password=${$("#password").val()}&genro=${$("#genro").val()}&pais=${$("#pais").val()}`;
	console.log(parametros);
	$.ajax({
		url:"/guardarregistro",
		method:"POST",
		data: parametros,
		dataType:"json", //json
		success: function(res){ //200 OK
            console.log(res);
            window.location.replace("/sesioniniciada.html");
		},
		error:function(error){
			console.error(error);
		}
    }); 
});

//Para Iniciar Sesion de usuario
$("#btn-login").click(function(){
    console.log($("#formulario").serialize());
    $.ajax({
        url:"/login",
        method:"POST",
        data:$("#formulario").serialize(),
        dataType:"json",
        success:function(respuesta){
            console.log(respuesta);
            if (respuesta.length == 1)
                window.location.href = "/home.html";
            else 
                alert("Credenciales invalidas");
        },
        error:function(error){
            console.error(error);
        }
    });
});
