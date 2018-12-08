//Servidor web en nodeJS para publicar archivos estaticos.
var express = require("express");
var session = require("express-session");
var mysql = require("mysql");
var bodyParser = require("body-parser");
var app = express();
var credenciales = {
    user: "root",
    password: "Misael_0801198109176",
    database: "dunamis",
    host: "localhost",
    port: "3306"
};
//Exponer una carpeta como publica, unicamente para archivos estaticos: .html, imagenes, .css, .js
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({
    extended: true
}));
app.use(express.static("public"));
app.use(session({
    secret: "ASDFE$%#%",
    resave: true,
    saveUninitialized: true
}));
var publicAdmin = express.static("public-admin");
var publicUsuario = express.static("public-usuario");

app.use(
    function (req, res, next) {
        if (req.session.correoUsuario) {
            //Significa que el usuario si esta logueado
            if (req.session.codigoTipoUsuario == 1)
                publicAdmin(req, res, next);
            else if (req.session.codigoTipoUsuario == 2)
                publicUsuario(req, res, next);
            else if (req.session.codigoTipoUsuario == 3)
                publicUsuario(req, res, next);
            else if (req.session.codigoTipoUsuario == 4)
                publicUsuario(req, res, next);
            else if (req.session.codigoTipoUsuario == 5)
                publicUsuario(req, res, next);
        } else
            return next();
    }
);

app.get("/paices", function (req, res) {
    var conexion = mysql.createConnection(credenciales);
    conexion.query("SELECT codigo_pais, nombre_pais FROM tbl_paises",
        [],
        function (error, data, fields) {
            if (error)
                res.send(error);
            else
                res.send(data);
            res.end();
        }
    );
});


///Para agregar seguridad a una ruta especifica:
function verificarAutenticacion(req, res, next) {
    if (req.session.correoUsuario)
        return next();
    else
        res.send("ERROR, ACCESO NO AUTORIZADO");
}


app.post("/login",function(req, res){
    var conexion = mysql.createConnection(credenciales);
    conexion.query(
        "SELECT codigo_usuario, correo, codigo_tipo_usuario FROM tbl_usuarios WHERE contrasenia = ? and correo=?",
        [req.body.contrasena, req.body.correo],
        function(error, data, fields){
            if (error){
                res.send(error);
                res.end();
            }else{
                if (data.length==1){
                    req.session.codigoUsuario = data[0].codigo_usuario;
                    req.session.correoUsuario = data[0].correo;
                    req.session.codigoTipoUsuario = data[0].codigo_tipo_usuario
                }
                res.send(data);
                res.end();
            }
        }
    )
});

app.post("/usuarios", function (req, res) {
    var conexion = mysql.createConnection(credenciales);
    conexion.query(
        "SELECT codigo_usuario, nombre_completo, correo, username, genero, telefono, descripcion, direccion, fecha_nacimiento, codigo_tipo_usuario, codigo_plan, codigo_pais, foto FROM tbl_usuarios WHERE codigo_usuario = ?",
        [req.session.codigoUsuario],
        function (error, data, fields){
            if (error){
                res.send(error);
                res.end();
            } else {
                if (data.length == 1) {
                    req.session.nombre_completo = data[0].nombre_completo;
                    req.session.username = data[0].username;
                    req.session.genero = data[0].genero;
                    req.session.telefono = data[0].telefono;
                    req.session.descripcion = data[0].descripcion;
                    req.session.direccion = data[0].direccion;
                    req.session.fechaNacimiento = data[0].fecha_nacimiento;
                    req.session.codigoPlan = data[0].codigo_plan;
                    req.session.codigoPais = data[0].codigo_pais;
                    req.session.foto = data[0].foto
                }
                res.send(data);
                res.end();
                conexion.end();
            }
        }
    )
});

app.get("/obtener-session", function (req, res) {
    res.send("Codigo Usuario: " + req.session.codigoUsuario +
        ", Correo: " + req.session.correoUsuario +
        ", Tipo Usuario: " + req.session.codigoTipoUsuario
    );
    res.end();
});

app.get("/cerrar-sesion", function (req, res) {
    req.session.destroy();
    res.send("Sesion eliminada");
    res.end();
});

app.get("/contenido-registringido", verificarAutenticacion, function (req, res) {
    res.send("Este es un contenido restringido");
    res.end();
});

app.post("/guardarregistro", function (req, res) {
    var conexion = mysql.createConnection(credenciales);
    conexion.query("INSERT INTO tbl_usuarios(nombre_completo, correo, username, contrasenia, genero, codigo_pais, codigo_plan) VALUES (?,?,?,?,?,?,1)",
        [req.body.nombrecompleto,
            req.body.correo,
            req.body.nombreusuario,
            req.body.password,
            req.body.genro,
            req.body.pais
        ],
        function (error, data, fields) {
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