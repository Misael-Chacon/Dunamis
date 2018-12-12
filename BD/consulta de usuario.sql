select a.codigo_usuario, a.nombre_completo, a.correo, a.contrasenia, a.username, 
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
        on(a.codigo_usuario = l.codigo_usuario)
        
        
update tbl_usuarios 
set telefono=[99062425],
descripcion=[Soy la mejor mamá del mundo],
direccion=[colonia villanueva sector 7a frente a la terminal de buses carretera a Danli],
fecha_nacimiento=[12/04/1984]
WHERE codigo_usuario = 2