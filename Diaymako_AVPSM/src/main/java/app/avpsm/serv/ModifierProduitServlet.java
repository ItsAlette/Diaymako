package app.avpsm.serv;

import java.io.IOException;
import java.sql.SQLException;

import app.avpsm.dao.Produitdao;
import app.avpsm.entities.Produit;
import app.avpsm.entities.Utilisateur;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class ModifierProduitServlet
 */
public class ModifierProduitServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Produitdao pdao;
	
	public void init() {
        pdao= new Produitdao();
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
		  
		        String url = request.getContextPath() + "/mesproduits.jsp?idUser="+ idUser;
		        response.sendRedirect(url);
		} 
		
		else 
		{
			response.sendRedirect(request.getContextPath() + "/login.jsp");
            return;
		}
		
	}

}
