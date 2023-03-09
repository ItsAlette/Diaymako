package app.avpsm.serv;


import java.io.IOException;
import java.sql.SQLException;

import app.avpsm.dao.Produitdao;
import app.avpsm.entities.Produit;
import app.avpsm.entities.Utilisateur;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class AjoutProduit
 */

@WebServlet("/ajouterproduit")
public class ProduitServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Produitdao pdao;
	
	public void init() {
        pdao= new Produitdao();
    }
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
					
				HttpSession session = request.getSession();
				Utilisateur utilisateur = (Utilisateur) session.getAttribute("utilisateur");
				if (utilisateur != null) 
				{
				  int idUser = utilisateur.getIdUser();
					 	//int idUser2 = (int) request.getSession().getAttribute("idUser");
				        String nom = request.getParameter("nom");
				        String description = request.getParameter("description");
				        double prix = Double.parseDouble(request.getParameter("prix"));
				        String etat = request.getParameter("etat");
				       
				        
				        Produit produit = new Produit();
				        produit.setNom(nom);
				        produit.setDescription(description);
				        produit.setPrix(prix);
				        produit.setEtat(etat);
				        
				        try {
				            pdao.ajouterProduit(produit, idUser);
				        } catch (SQLException e) {
				            e.printStackTrace();
				        }
				    
				    // Rediriger l'utilisateur vers la page de ses produits
					//String url = request.getContextPath() + "/mesproduits.jsp?idUser="+ idUser;
				   // String url = request.getContextPath() + "/mesproduits.jsp";
			       // response.sendRedirect(url);
				        String url = request.getContextPath() + "/mesproduits.jsp?idUser="+ idUser;
				        response.sendRedirect(url);
				} 
				
				else 
				{
					response.sendRedirect(request.getContextPath() + "/login.jsp");
		            return;
				}
				
	}
	
	
	 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	       // HttpSession session = request.getSession();
	       // int idUser = (int) session.getAttribute("idUser");
		 	HttpSession session = request.getSession();
			Utilisateur utilisateur = (Utilisateur) session.getAttribute("utilisateur"); 
			int idUser = utilisateur.getIdUser();
	        request.setAttribute("idUser", idUser);
	        request.getRequestDispatcher("listedesproduits.jsp").forward(request, response);
	    }

}
