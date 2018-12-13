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

var publicAdmin = express.static("public-admin");
var publicUsuario = express.static("public-usuario");

var codigoUsuario = null;
var correoUsuario = null;
var codigoTipoUsuario = null;
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
//RUTAS
app.get("/paices", function (req, res) {
    var conexion = mysql.createConnection(credenciales);
    conexion.query("SELECT codigo_pais, nombre_pais FROM tbl_paises",
        [],
        function (error, data, fields) {
            if (error)
                res.send(error);
            else {
                for (var i = 0; i < res.length; i++) {
                    $("#pais").append(
                        `<option value="${data[i].codigo_pais}">${data[i].nombre_pais}</option>`
                    );
                }
            }
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


app.post("/login", function (req, res) {
    var conexion = mysql.createConnection(credenciales);
    conexion.query(
        "SELECT codigo_usuario, correo, codigo_tipo_usuario FROM tbl_usuarios WHERE contrasenia = ? and correo=?",
        [req.body.contrasena, req.body.correo],
        function (error, data, fields) {
            if (error) {
                res.send(error);
                res.end();
            } else {
                console.log(res);
                if (data.length == 1) {
                    req.session.codigoUsuario = data[0].codigo_usuario;
                    req.session.correoUsuario = data[0].correo;
                    req.session.codigoTipoUsuario = data[0].codigo_tipo_usuario;
                    codigoUsuario = req.session.codigoUsuario;
                    correoUsuario = req.session.correoUsuario;
                    codigoTipoUsuario = req.session.codigoTipoUsuario;
                }
                res.send(data);
                res.end();
            }
        }
    )
});

app.get("/usuarios", function (req, res) {
    var conexion = mysql.createConnection(credenciales);
    conexion.query(`select a.nombre_completo, a.correo, a.username, 
    a.genero, a.telefono, a.descripcion, a.direccion, a.foto, a.fecha_nacimiento, 
    b.nombre_plan,c.nombre_pais,d.nombre_tipo_usuario, i.url_facebook, j.url_twitter, 
    k.url_linkedin, l.url_github 
    from tbl_usuarios a 
    inner join tbl_planes b 
    on(a.codigo_plan = b.codigo_plan)
    inner join tbl_paises c
    on(a.codigo_pais = c.codigo_pais)
    inner join tbl_tipo_usuario d
    on(a.codigo_tipo_usuario = d.codigo_tipo_usuario) 
    left join tbl_facebook i
    on(a.codigo_usuario = i.codigo_usuario)
    left join tbl_twitter j
    on(a.codigo_usuario = j.codigo_usuario)
    left join tbl_linkedin k
    on(a.codigo_usuario = k.codigo_usuario)
    left join tbl_github l
    on(a.codigo_usuario = l.codigo_usuario) WHERE a.codigo_usuario = ?`,
        [codigoUsuario],
        function (error, data, fields) {
            if (error) {
                res.send(error);
                res.end();
            } else {
                res.send(data);
                res.end();
                conexion.end();
            }
        }
    )
});
/*
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
*/
app.get("/guardarregistro", function (req, res) {
    var conexion = mysql.createConnection(credenciales);
    conexion.query("INSERT INTO tbl_usuarios(nombre_completo, correo, username, contrasenia, genero, codigo_pais, codigo_plan, codigo_tipo_usuario) VALUES (?,?,?,?,?,?,1,2)",
        [req.query.nombrecompleto,
            req.query.correo,
            req.query.nombreusuario,
            req.query.password,
            req.query.genero,
            req.query.pais,
        ],
        function (error, data, fields) {
            if (error) {
                res.send(error);
                res.end();
            } else {
                res.redirect('/login.html');
                res.end();
            }
        });
});

app.get("/pago", function (req, res) {
    var conexion = mysql.createConnection(credenciales);
    conexion.query("INSERT INTO tbl_creditos(nombre_tarjeta, numero_tarjeta, vencimiento, codigo_seguridad, tipo_pago, codigo_plan) VALUES (?,?,?,?,?,?)",
        [req.query.nombretarjeta,
            req.query.numerotarjeta,
            req.query.vencimiento,
            req.query.codigotarjeta,
            req.query.paymentMethod,
            req.query.codigoplan,
        ],
        function (error, data, fields) {
            if (error) {
                res.send(error);
                res.end();
            } else {
                var query = "UPDATE `tbl_usuarios`SET";
                query += "`codigo_plan`='" + req.query.codigoplan + "'";
                query += "WHERE `tbl_usuarios`.`codigo_usuario` = " + codigoUsuario + "";
                var conexion = mysql.createConnection(credenciales);
                conexion.query(query, function (error, data, fields) {
                    if (error) {
                        res.send(error);
                        res.end();
                    } else {
                        res.redirect('/sesioniniciada.html');
                        res.end();
                    }
                });
            }
        });
});

app.get("/actualizar", function (req, res) {
    var query = "UPDATE `tbl_usuarios`SET";
    query += "`telefono`='" + req.query.txtelefono + "',";
    query += "`descripcion`='" + req.query.txtBiography + "',";
    query += "`direccion`='" + req.query.txtdireccion + "',";
    query += "`fecha_nacimiento`='" + req.query.txtfecha + "'";
    query += "WHERE `tbl_usuarios`.`codigo_usuario` = " + codigoUsuario + "";
    var conexion = mysql.createConnection(credenciales);
    conexion.query(query, function (error, data, fields) {
        if (error) {
            res.send(error);
            res.end();
        } else {
            var query = "UPDATE `tbl_facebook`SET";
            query += "`url_facebook`='" + req.query.txtFacebook + "'";
            query += "WHERE `tbl_facebook`.`codigo_usuario` = " + codigoUsuario + "";
            var conexion = mysql.createConnection(credenciales);
            conexion.query(query, function (error, data, fields) {
                if (error) {
                    res.send(error);
                    res.end();
                } else {
                    var query = "UPDATE `tbl_twitter`SET";
                    query += "`url_twitter`='" + req.query.txtTwitter + "'";
                    query += "WHERE `tbl_twitter`.`codigo_usuario` = " + codigoUsuario + "";
                    var conexion = mysql.createConnection(credenciales);
                    conexion.query(query, function (error, data, fields) {
                        if (error) {
                            res.send(error);
                            res.end();
                        } else {
                            var query = "UPDATE `tbl_linkedin`SET";
                            query += "`url_linkedin`='" + req.query.txtLinkedin + "'";
                            query += "WHERE `tbl_linkedin`.`codigo_usuario` = " + codigoUsuario + "";
                            var conexion = mysql.createConnection(credenciales);
                            conexion.query(query, function (error, data, fields) {
                                if (error) {
                                    res.send(error);
                                    res.end();
                                } else {
                                    var query = "UPDATE `tbl_github`SET";
                                    query += "`url_github`='" + req.query.txtPlus + "'";
                                    query += "WHERE `tbl_github`.`codigo_usuario` = " + codigoUsuario + "";
                                    var conexion = mysql.createConnection(credenciales);
                                    conexion.query(query, function (error, data, fields) {
                                        if (error) {
                                            res.send(error);
                                            res.end();
                                        } else {
                                            res.send(data);
                                            res.end();
                                        }
                                    });
                                }
                            });
                        }
                    });
                }
            });
        }
    });
});

//Crear y levantar el servidor web.
app.set('port', process.env.PORT || 8111);
app.listen(app.get('port'), () => {
    console.log(`SERVIDOR INICIADO EN EL PUERTO ${app.get('port')}`);
});
//var io = require('socket.io').listen(server);