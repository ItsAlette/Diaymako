package app.avpsm.entities;

import java.io.Serializable;

/**
 * User.java
 * This is a model class represents a User entity
 * @author alette
 *
 */


public class Produit implements Serializable{
	
	 private static final long serialVersionUID = 1L;
	 private String nom;
	 private String description;
	 private Double prix;
	 private String etat;
	 private String image;
	 
	public Produit() {
		super();
	}
	
	

	public Produit( String nom, String description, Double prix, String etat, String image) {
		super();
		this.nom = nom;
		this.description = description;
		this.prix = prix;
		this.etat = etat;
		this.image = image;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Double getPrix() {
		return prix;
	}

	public void setPrix(Double prix) {
		this.prix = prix;
	}

	public String getEtat() {
		return etat;
	}

	public void setEtat(String etat) {
		this.etat = etat;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}
	
	
	 
	 

}
