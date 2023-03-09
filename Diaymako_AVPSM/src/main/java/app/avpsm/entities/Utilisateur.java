package app.avpsm.entities;

public class Utilisateur 
{
	private int idUser;
	 private String nom;
	 private String prenom;
	 private String telephone;
	 private String login;
	 private String motdepasse;
	 
	 
	 
	public Utilisateur() {
		super();
	}

	public Utilisateur(int id,String nom, String prenom, String telephone, String login, String motdepasse) {
		super();
		this.idUser = id;
		this.nom = nom;
		this.prenom = prenom;
		this.telephone = telephone;
		this.login = login;
		this.motdepasse = motdepasse;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getMotdepasse() {
		return motdepasse;
	}

	public void setMotdepasse(String motdepasse) {
		this.motdepasse = motdepasse;
	}

	public int getIdUser() {
		return idUser;
	}

	public void setIdUser(int idUser) {
		this.idUser = idUser;
	}
	
	
	 
	 
}
