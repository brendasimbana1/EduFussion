package com.educacion.negocio;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.educacion.datos.Conexion;

public class Categoria {

	Integer id;
	String nombre;

	public String mostrarCategoria()
	{
		String combo="<select name=cmbCategoria>";
		String sql="SELECT * FROM tb_categoria";
		ResultSet rs=null;
		Conexion con=new Conexion();	
		try
		{
			rs=con.Consulta(sql);
			if (rs==null) {
				return "Error: La consulta SQL no devolvió resultado";
			}
			while(rs.next())
			{
				combo+="<option value="+rs.getInt(1)+ ">"+rs.getString(2)+"</option>";
			}
			combo+="</select>";
		}
		catch(SQLException e)
		{
			System.out.print(e.getMessage());
		}
		return combo;
	}

}