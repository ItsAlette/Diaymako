package app.avpsm.serv;

import java.io.IOException;

import app.avpsm.dao.Utilisateurdao;
import app.avpsm.entities.Utilisateur;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class ConnexionServlet
 */
public class ConnexionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
       
	private Utilisateurdao utilisateurDao;

    @Override
    public void init() throws ServletException {
        super.init();
        utilisateurDao = new Utilisateurdao(); // Initialisation de l'objet DAO pour accéder à la base de données
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Utilisateur utilisateur = (Utilisateur) session.getAttribute("utilisateur");
        if (utilisateur != null) {
            // Si l'utilisateur est déjà connecté, rediriger vers la page d'accueil
            response.sendRedirect(request.getContextPath() + "/accueil.jsp");
        } else {
            // Sinon, afficher la page de connexion
        	
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String login = request.getParameter("login");
        String motdepasse = request.getParameter("password");

        Utilisateur utilisateur = utilisateurDao.getByLogin(login);
        if (utilisateur != null && utilisateur.getMotdepasse().equals(motdepasse)) {
            // Si les identifiants de connexion sont valides, stocker l'utilisateur dans la session et rediriger vers la page d'accueil
            HttpSession session = request.getSession();
            session.setAttribute("utilisateur", utilisateur);
            response.sendRedirect(request.getContextPath() + "/accueil.jsp");
        } else {
            // Sinon, afficher un message d'erreur et réafficher la page de connexion
            request.setAttribute("message", "Login ou mot de passe incorrects !!");
            request.getRequestDispatcher("/login.jsp").forward(request, response);
            //out.println("<p font color=red size=20>Erreur de login ou de mot de passe !!!!</p>");
			//out.println("<a href=login.jsp >Reessayer en cliquant ici</a>"); 
        }
    }

}
