package com.Gestion_Stock.controllers;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import com.Gestion_Stock.models.famille;

public class familleManager {
	public static List<famille>getAllFamille()
	{
		List<famille> list=new ArrayList<>();
		Connection cnx = ConnectionManager.getConnection();
		String sql="select * from famille";
		try {
			PreparedStatement st=cnx.prepareStatement(sql);
			ResultSet rs=st.executeQuery();
			while(rs.next())
			{
				int id=rs.getInt(1);
				String nom_famille=rs.getString(2);
				String description=rs.getString(3);
			
				list.add( new famille(id,nom_famille,description));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
}
