package app.avpsm.entities;

public class Message {

	private int idMessage;
	private String contenu;
	private String statut;
	
	public Message(int idMessage, String contenu, String statut) {
		super();
		this.idMessage = idMessage;
		this.contenu = contenu;
		this.statut = statut;
	}

	public Message() {
		super();
	}

	public int getIdMessage() {
		return idMessage;
	}

	public void setIdMessage(int idMessage) {
		this.idMessage = idMessage;
	}

	public String getContenu() {
		return contenu;
	}

	public void setContenu(String contenu) {
		this.contenu = contenu;
	}

	public String getStatut() {
		return statut;
	}

	public void setStatut(String statut) {
		this.statut = statut;
	}
	
	
}
