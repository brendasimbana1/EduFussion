package com.educacion.seguridad;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.educacion.datos.Conexion;

public class Pagina {
	private String nombre;
	private String path;
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}

	public String mostrarMenu(int nperfil)
	{
		String menu="<nav><ul>";
		String sql="SELECT * FROM tb_pagina pag, tb_perfil per, tb_perfilpagina pper "
				+"WHERE pag.id_pag=pper.id_pag AND pper.id_per=per.id_per AND pper.id_per= "+nperfil
				+" order by pag.id_pag;";
				Conexion con = new Conexion();
		ResultSet rs=null;
		
		try
		{
			rs=con.Consulta(sql);
			if(rs==null) {
				System.out.println("No vale la consulta");
			}
			while(rs.next())
			{
				menu+="<a href="+rs.getString(3)+" accesskey="+rs.getInt(1)+">"+rs.getString(2)+
				"</a>";
			}
			menu+="</ul></nav>";
		}
		catch(SQLException e)
		{
			System.out.print(e.getMessage());
			
		}
		return menu;
	}
}
