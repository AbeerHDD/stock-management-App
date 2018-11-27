package com.Gestion_Stock.models;

public class famille {
	int id;
	public String nom_famille;
	public String description;
	public famille(int id,String nom_famille, String description) {
		super();
		this.id=id;
		this.nom_famille = nom_famille;
		this.description = description;
	}
	
}
