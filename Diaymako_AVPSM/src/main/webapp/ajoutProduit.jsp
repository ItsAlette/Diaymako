<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="app.avpsm.entities.* "%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
		<link rel="stylesheet" href="css/ajoutprod.css">
		<title>Ajouter un produit</title>
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
  
  <div class="container">
  <form action="<%= request.getContextPath() %>/ajouterproduit" method="post">

    <label for="fname">Nom</label>
    <input type="text" id="fname" name="nom" placeholder="Nom..">

    <label for="lname">Prix</label>
    <input type="text" id="lname" name="prix" placeholder="Prix..">

    <label for="country">Etat</label>
    <select id="country" name="etat">
      <option value="Neuf">Neuf</option>
      <option value="Usé">Use</option>
    </select>

    <label for="subject">Description</label>
    <textarea id="subject" name="description" placeholder="Ecriver quelque chose.." style="height:200px"></textarea>

    <input type="submit" value="Ajouter"> 

  </form>
</div>

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