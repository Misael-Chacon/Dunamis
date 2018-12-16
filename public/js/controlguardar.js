
$(document).ready(function(){
	$.ajax({
		url:"/titulo",
		method:"GET",
		dataType:"json",
		success:function(res){
			//console.log(res);
				$("#tituloproyecto").append(` ${res[0].nombre_proyecto}`);
		},
		error:function(error){
			console.error(error);
		}
    });
});

$("#guardaproyecto").click(function(){
	var parametros = `editor=${$("#editor").val()}&editorr=${$("#editorr").val()}&editora=${$("#editora").val()}`;
     $.ajax({
        url:"/guardahtmlcssjavascript",
		method:"GET",
		data: parametros,
        dataType:"json",
        success:function(res){
			console.log(res);
			//window.location.href = "/perfil.html";
        },
        error:function(error){
        console.error(error);
        }
    });
});