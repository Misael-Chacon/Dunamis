select codigo_proyecto from tbl_proyectos where nombre_proyecto = "FORMULARIO"
SELECT * FROM tbl_proyectos
SELECT * FROM tbl_usuarios_x_tbl_proyectos
SELECT * FROM tbl_tipo_usuario
SELECT codigo_plan from tbl_usuarios WHERE codigo_usuario = 3

select count(codigo_proyecto) as proyectos from tbl_proyectos where codigo_usuario = "5";
select count(codigo_proyecto) as proyectos, codigo_usuario from tbl_proyectos where codigo_usuario =28
SELECT nombre_proyecto, descripcion FROM tbl_proyectos
SELECT nombre_proyecto, descripcion FROM tbl_proyectos WHERE codigo_usuario = 9