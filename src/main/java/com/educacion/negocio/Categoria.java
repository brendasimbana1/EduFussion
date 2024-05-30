package com.educacion.negocio;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import com.educacion.datos.Conexion;

public class Categoria {

	Integer id;
	String nombre;

	public String mostrarCategoria()
	{
		String combo="<select id=\"cmbCategoria\" name=\"cmbCategoria\">";
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
	
	public int id_categoria() {

		String sql="SELECT id_cat FROM tb_categoria order by id_cat asc;";
		Conexion con=new Conexion();
		ResultSet rs=null;
		List<Integer> id=new ArrayList<>();
		//List<Integer> resultado=new ArrayList<>();
		int mayor = 0;	
		rs=con.Consulta(sql);
		try {
			while(rs.next())
			{
				id.add(rs.getInt(1));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.print(e.getMessage());
		}
		
		if(id.isEmpty()){
			System.out.println("La lista l está vacía");
			 return 0;
		}
			
		mayor=Collections.max(id)+1;
		return mayor;
	}

}
