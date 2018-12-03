//Servidor web en nodeJS para publicar archivos estaticos.
var express = require("express");
var mysql = require("mysql");
var bodyParser = require("body-parser");
var app = express();
var credenciales = {
    user: "root",
    password:"Misael_0801198109176",
    database:"dunamis",
    host:"localhost",
    port:"3306"
};
//Exponer una carpeta como publica, unicamente para archivos estaticos: .html, imagenes, .css, .js
app.use(express.static("public"));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended:true}));

app.get("/paices",function(req,res){
    var conexion = mysql.createConnection(credenciales);
    conexion.query("SELECT codigo_pais, nombre_pais FROM tbl_paises",
        [],
        function(error, data, fields){
            if (error)
            res.send(error);    
            else
            res.send(data);
            res.end();
        }
    );
});

app.post("/guardarregistro",function(req, res){
   var conexion = mysql.createConnection(credenciales);
    conexion.query("INSERT INTO tbl_usuarios(nombre_completo, correo, username, contrasenia, genero, codigo_pais, codigo_plan) VALUES (?,?,?,?,?,?,1)",
        [req.body.nombrecompleto, 
         req.body.correo, 
         req.body.nombreusuario, 
         req.body.password, 
         req.body.genro, 
         req.body.pais],
        function(error, data, fields){
            if (error)
                res.send(error);    
            else
                res.send(data); 
                res.end(); 
        } 
    ); 
});   



//Crear y levantar el servidor web.
app.listen(8111);
//var io = require('socket.io').listen(server);
console.log("Servidor inciado");

