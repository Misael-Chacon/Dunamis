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
        
        
SELECT a.codigo_usuario, a.correo, a.codigo_tipo_usuario 
FROM tbl_usuarios a
WHERE contrasenia = 08011981 and correo=?"