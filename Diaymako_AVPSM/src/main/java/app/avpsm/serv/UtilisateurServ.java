package app.avpsm.serv;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import app.avpsm.dao.Utilisateurdao;
import app.avpsm.entities.Utilisateur;
/**
 * Servlet implementation class UtilisateurServ
 */

@WebServlet("/enregistrerinscription")
public class UtilisateurServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Utilisateurdao udao;
	
	public void init() {
        udao= new Utilisateurdao();
    }
        
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String telephone = request.getParameter("telephone");
        String login = request.getParameter("login");
        String motdepasse = request.getParameter("motdepasse");
        
        
        
        Utilisateur u = new Utilisateur(0,nom, prenom, telephone, login,motdepasse);
        try{
	        	 udao.EnregistrerUser(u);}
	            catch (Exception e) {
	            request.setAttribute("message", "Erreur lors de l'enregistrement de l'utilisateur.");
	            request.getRequestDispatcher("inscription.jsp").forward(request, response);
	            e.printStackTrace();
	            }
        		// je ne sais pas encore comment afficher ce message sur le jsp
		        request.setAttribute("message", "Utilisateur enregistré avec succès.");
		        request.getRequestDispatcher("login.jsp").forward(request, response);
    
	}
	
	

}
