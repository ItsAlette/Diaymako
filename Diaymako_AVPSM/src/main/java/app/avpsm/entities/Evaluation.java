package app.avpsm.entities;

import java.sql.Date;

public class Evaluation {
	private int idEvaluation;
	private int note;
	private String commentaires;
	private Date date;
	
	public Evaluation() {
		super();
	}

	public Evaluation(int idEvaluation, int note, String commentaires, Date date) {
		super();
		this.idEvaluation = idEvaluation;
		this.note = note;
		this.commentaires = commentaires;
		this.date = date;
	}

	public int getIdEvaluation() {
		return idEvaluation;
	}

	public void setIdEvaluation(int idEvaluation) {
		this.idEvaluation = idEvaluation;
	}

	public int getNote() {
		return note;
	}

	public void setNote(int note) {
		this.note = note;
	}

	public String getCommentaires() {
		return commentaires;
	}

	public void setCommentaires(String commentaires) {
		this.commentaires = commentaires;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	
	
}
