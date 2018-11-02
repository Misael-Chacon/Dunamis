//var usuarios = [];
var db;

function registrar(){
    var usuario ={
        titulo: document.getElementById("titulo").value,
        urlCaratula: document.getElementById("urlCaratula").value,
        canal: document.getElementById("canal").value,
        visualizaciones: document.getElementById("visualizaciones").value,
        duración: document.getElementById("duracion").value,
        subido: document.getElementById("subido").value
    }
    //usuarios.push(usuario);

    //Guardar objeto en BD
    var transaccion = db.transaction(["usuarios"],"readwrite");///readwrite: Escritura/lectura, readonly: Solo lectura
    var objectStoreUsuarios = transaccion.objectStore("usuarios");
    var solicitud = objectStoreUsuarios.add(usuario);
    solicitud.onsuccess = function(evento){
        console.log("Se agrego el usuario correctamente");
     }
    solicitud.onerror = function(evento){
      console.log("Ocurrio un error al guardar");
    }

    //console.log(usuarios);
}

(function(){
    if (!('indexedDB' in window)){
        console.error("El navegador no soporta indexedDB");
        return;
    }

    var solicitud = window.indexedDB.open("youtube", 1);//Parametros: nombre, version. La version debe ser entero
    
    //Se ejecutara en caso de que pueda abrir la BD sin problemas
    solicitud.onsuccess = function(evento){
        console.log("Se abrio la base de datos");
        db = solicitud.result;
    };

    //Se ejecutar en caso no se pueda abrir la base de datos
    solicitud.onerror = function(evento){
        console.error("No se pudo abrir la base datos");
    };

    //Se ejecutara cuando NO exista la base de datos o se necesite actualizar
    solicitud.onupgradeneeded = function(evento){
        console.log("La base de datos se creara o se actualizara");
        db = evento.target.result; //Obteniendo la refencia la base de datos creada (facebook)
        var objectStoreUsuarios = db.createObjectStore("usuarios", {keyPath: "codigo", autoIncrement: true});

        objectStoreUsuarios.transaction.oncomplete = function(evento){
            console.log("El object store de usuarios se creo con exito");
        }

        objectStoreUsuarios.transaction.onerror = function(evento){
            console.log("Error al crear el object store de usuarios");
        }
        //En este punto se debe crear la estructura de la base de datos
        //Es necesario crear almacenes de objetos en la base de datos (Object Store)
    }
})();

/*

function canal(){
    var canales=[
        {
            canal: "Fuera JOH", 
            descripcion: "Canal de Videos de Marchas"
        },
        {
            canal: "Anime Cool", 
            descripcion: "Canal de Videos de Animes Cool"
        },
        {
            canal: "Dragon Ball", 
            descripcion: "Canal de Videos de Dragon Ball"
        },
        {
            canal: "Epico", 
            descripcion: "Canal de Videos Epicos"
        },
        {
            canal:"Musical", 
            descripcion: "Canal de Videos de Musical"
        }
    ]

    var selector = document.getElementById("canal");
    for(var i=0;i<canales.length;i++){ 
        for(var j=0;j<canales.length;j++){
        document.getElementById("canal").innerHTML += "<option value='"+canales[i][j]+"'>"+canales[i][j]+"</option>";
   }  }
}
*/

function cargar_canales(){
    var carreras = ['Fuera Joh','Dragon Ball','Anime','Peliculas','Musicales'];
    var carrera = document.getElementById("canal"); /* Para no tener que llamar a cada rato a getElementById */
    for(var i=0;i<carreras.length;i++){ 
    carrera.options[i] = new Option(carreras[i]);
    }
}
cargar_canales();

