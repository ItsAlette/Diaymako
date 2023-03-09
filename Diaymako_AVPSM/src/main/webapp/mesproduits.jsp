<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<%@page import="app.avpsm.entities.*"%>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	
	<title>Liste de mes produits</title>
	<link rel="stylesheet" href="css/mesproduits.css">
	<link rel="stylesheet" href="css/accueil.css">
	
</head>
<body>

	
<header>
    <div class="espace_panier">
      <h1>DIAYMAKO</h1>
      <a href="login.jsp" rel="noopener noreferrer" class="espace">
        Se deconnecter
      </a>
    </div>
  </header>
<%
    Utilisateur utilisateur = (Utilisateur) session.getAttribute("utilisateur");
    int idU = utilisateur.getIdUser();
%>

  <div class="nav" id="barreNav">
    
    <div class="deroulant">
        <button class="btn_deroulant">
          <i class="fa fa-caret-down"></i>
        </button>
        <a href="accueil.jsp">CATEGORIES</a>
        <div class="deroulant-content">
          <a href="#">Vetements</a>
          <a href="#">Smartphone</a>
          <a href="#">Meubles</a>
          <a href="#">Animaux</a>
        </div>
      </div>
    <a href="#">MES COMMANDES</a>
    <div class="deroulant">
        <button class="btn_deroulant">MES PRODUITS
          <i class="fa fa-caret-down"></i>
        </button>
        <div class="deroulant-content">
          <a href="ajoutProduit.jsp">Ajouter</a>
          <a href="mesproduits.jsp?idUser=<%= idU %>">Voir la liste</a>
        </div>
      </div>
    <!-- <a href="#">MESSAGERIE</a> -->
    <a href="#" class="notification">
        <span>MESSAGERIE</span>
        <span class="badge">3</span>
      </a>
  </div>
  
  	
        		
      <%
		       
		String idUserStr = request.getParameter("idUser");
  		int idUser = 0;
  		if(idUserStr != null) {
   		 // Récupération de l'id de session de l'utilisateur
   			int idUse = Integer.parseInt(idUserStr);

      			Connection con = ConnexionRapide.getConnection();
      			 PreparedStatement statement = con.prepareStatement("select reference,nom,description,prix,etat from produit where idUSer= ?");
                 statement.setInt(1, idUse);
                 ResultSet resultSet = statement.executeQuery();
		       %><div class="container"> <%
                while (resultSet.next()) {
       %>
		
                 
                 <div class="card">
				      <p class="card-text line1">Nom : 
				      <%
			            out.print(resultSet.getString(2));
			          	%>
			          	</p>
			          	
				      <p class="prix">Prix : 
				      <%
			            out.print(resultSet.getString(4));
			          	%> CFA
				      </p>
				      <p>Etat : 
			          	<%
			            out.print(resultSet.getString(5));
			          	%>
			          	</p>
			          	
			          	 <img src="images/im_passpartout.jpg" class="card-img-top">
				     <div>
				    <a href="modifproduit.jsp?id=<%=resultSet.getInt(1)%>"><button class="button">Modifier</button></a> 
				       <!--  <a href="#"><button class="button">Modifier</button></a> -->
				      <a href="#"><button class="button">Supprimer</button></a>
				     </div>
				     
				    </div>

               
                
                 <%
}
%>
 </div>
<%
      } else {
    	    // la session n'existe pas, redirigez l'utilisateur vers la page de connexion
    	    response.sendRedirect("login.jsp");
    	}

%>
         
    
  	
 
  <footer>
    <ul class="list">
      <li>
        <a href="#">Contactez-nous</a>
      </li>
      <li>
        <a href="#">Conseils</a>
      </li>
      <li>
        <a href="#"> Liens légaux</a>
      </li>
    </ul>
  </footer>

</body>
</html>