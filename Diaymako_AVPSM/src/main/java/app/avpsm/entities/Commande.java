package app.avpsm.entities;

import java.sql.Date;

public class Commande {

	private int idCommande;
	private Date dateCommande;
	private String statut;
	private String informationsLivraison;
	
	public Commande() {
		super();
	}
	public Commande(int idCommande, Date dateCommande, String statut, String informationsLivraison) {
		super();
		this.idCommande = idCommande;
		this.dateCommande = dateCommande;
		this.statut = statut;
		this.informationsLivraison = informationsLivraison;
	}
	public int getIdCommande() {
		return idCommande;
	}
	public void setIdCommande(int idCommande) {
		this.idCommande = idCommande;
	}
	public Date getDateCommande() {
		return dateCommande;
	}
	public void setDateCommande(Date dateCommande) {
		this.dateCommande = dateCommande;
	}
	public String getStatut() {
		return statut;
	}
	public void setStatut(String statut) {
		this.statut = statut;
	}
	public String getInformationsLivraison() {
		return informationsLivraison;
	}
	public void setInformationsLivraison(String informationsLivraison) {
		this.informationsLivraison = informationsLivraison;
	}
	
	
}
