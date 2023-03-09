<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<%@page import="app.avpsm.entities.*"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
		<link rel="stylesheet" href="css/ajoutprod.css">
		<title>Modifier un produit</title>
</head>

<body>
	<header>
	    <div class="espace_panier">
	      <h1>  DIAYMAKO</h1>
	      <a href="login.jsp" rel="noopener noreferrer" class="espace">
	        Se deconnecter
	      </a>
	    </div>
  </header>
<%
    Utilisateur utilisateur = (Utilisateur) session.getAttribute("utilisateur");
    int idUser = utilisateur.getIdUser();
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
          <a href="mesproduits.jsp?idUser=<%= idUser %>">Voir la liste</a>
        </div>
      </div>
    <!-- <a href="#">MESSAGERIE</a> -->
    <a href="#" class="notification">
        <span>MESSAGERIE</span>
        <span class="badge">3</span>
      </a>
  </div>
  
 
	 <%
		       
		String idp = request.getParameter("id");
  		int idprod = 0;
  		if(idp != null) {
   		//recuperation de l'id du produit
   		idprod = Integer.parseInt(idp);

      	Connection con = ConnexionRapide.getConnection();
      	PreparedStatement statement = con.prepareStatement("select nom,description,prix,etat from produit where reference= ?");
        statement.setInt(1, idprod);
        ResultSet resultSet = statement.executeQuery();
        if (resultSet.next()) {
	        String nom = resultSet.getString("nom");
	        String description = resultSet.getString("description");
	        double prix = resultSet.getDouble("prix");
	       	String etat = resultSet.getString("etat");
                	    	
		      
       %>
	
	
  <div class="container">
  <form action="<%= request.getContextPath() %>/ajouterproduit" method="post">

    <label for="fname">Nom</label>
    <input type="text" id="fname" name="nom" value=<%
			            out.print(nom);
			          	%>>

    <label for="lname">Prix</label>
    <input type="text" id="lname" name="prix" value="<%= resultSet.getDouble(3)%>">

    <label for="country">Etat</label>
    <select id="country" name="etat">
    <option value="<%= resultSet.getString(4)%>" selected="selected"></option>
      <option value="Neuf">Neuf</option>
      <option value="Usé">Use</option>
    </select>

    <label for="subject">Description</label>
    <textarea id="subject" name="description" placeholder="Ecriver quelque chose.." style="height:200px"><%
			            out.print(description);
			          	%></textarea>

    <input type="submit" value="Ajouter"> 

  </form>
</div>
<%
                 } else {
                	// la session n'existe pas, redirigez l'utilisateur vers la page de connexion
             	    response.sendRedirect("mesproduits.jsp");
             	}} else {
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