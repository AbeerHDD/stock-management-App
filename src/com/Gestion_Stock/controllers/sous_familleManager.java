package com.Gestion_Stock.controllers;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import com.Gestion_Stock.models.sous_famille;

public class sous_familleManager {
	public static List<sous_famille>getAllGroupes()
	{
		List<sous_famille> list=new ArrayList<>();
		Connection cnx = ConnectionManager.getConnection();
		String sql="select * from sous_famille";
		try {
			PreparedStatement st=cnx.prepareStatement(sql);
			ResultSet rs=st.executeQuery();
			while(rs.next())
			{
				int id=rs.getInt(1);
				String nom_sous_famille=rs.getString(2);
				String tva=rs.getString(3);
				
				String description=rs.getString(4);
			
				list.add( new sous_famille(id,nom_sous_famille,tva,description));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
}
