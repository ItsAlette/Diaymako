<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="app.avpsm.entities.* "%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/accueil.css">
<title>Accueil Diaymako</title>
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

  <!-- The form -->
<form class="example">
    <input type="text" placeholder="Rechercher.." name="search"> 
    <button type="submit">Rechercher</button> 
  </form>

  <h2 class="hr"> A LA UNE </h2>

  <div class="container">
    <div class="card">
      <p class="nomProd">Jean</p>
      <p class="prix">2000 FCA</p>
      <img src="images/im1.jpg" class="card-img-top">
      <p class="grey"><a href="#" class="button">Acheter</a></p>
    </div>
    <div class="card">
      <p class="nomProd">Airpod</p>
      <p class="prix">5000 FCA</p>
      <img src="images/im2.jpg" class="card-img-top"> 
      <p class="grey"><a href="#" class="button">Acheter</a></p>
    </div>
    <div class="card">
      <p class="nomProd">Jupe</p>
      <p class="prix">12000 FCA</p>
      <img src="images/im3.jpg" class="card-img-top"> 
      <p class="grey"><a href="#" class="button">Acheter</a></p>
    </div>
    <div class="card">
      <p class="nomProd">Chaise</p>
      <p class="prix">12000 FCA</p>
      <img src="images/im4.jpg" class="card-img-top"> 
      <p class="grey"><a href="#" class="button">Acheter</a></p>
    </div>
    <div class="card">
      <p class="nomProd">Maskara de NYX</p>
      <p class="prix">5000 FCA</p>
      <img src="images/im5.jpg" class="card-img-top">
      <p class="grey"><a href="#" class="button">Acheter</a></p>
    </div>
    <div class="card">
      <p class="nomProd">Maskara de NYX</p>
      <p class="prix">12000 FCA</p>
      <img src="images/im6.jpg" class="card-img-top">
      <p class="grey"><a href="#" class="button">Acheter</a></p>
    </div>
    <div class="card">
      <p class="nomProd">Maskara de NYX</p>
      <p class="prix">12000 FCA</p>
      <img src="images/im7.jpg" class="card-img-top">
      <p class="grey"><a href="#" class="button">Acheter</a></p>
    </div>
    <div class="card">
      <p class="nomProd">Maskara de NYX</p>
      <p class="prix">12000 FCA</p>
      <img src="images/im8.jpg" class="card-img-top">
      <p class="grey"><a href="#" class="button">Acheter</a></p>
    </div>
    <div class="card">
      <p class="nomProd">Chaise</p>
      <p class="prix">12000 FCA</p>
      <img src="images/im11.jpg" class="card-img-top">
      <p class="grey"><a href="#" class="button">Acheter</a></p>
    </div>
    <div class="card">
      <p class="nomProd">Maskara de NYX</p>
      <p class="prix">12000 FCA</p>
      <img src="images/im10.jpg" class="card-img-top">
      <p class="grey"><a href="#" class="button">Acheter</a></p>
    </div>
    <div class="card">
      <p class="nomProd">Maskara de NYX</p>
      <p class="prix">12000 FCA</p>
      <img src="images/im1.jpg" class="card-img-top"> 
      <p class="grey"><a href="#" class="button">Acheter</a></p>
    </div>
    <div class="card">
      <p class="nomProd">Maskara de NYX</p>
      <p class="prix">12000 FCA</p>
      <img src="images/im12.jpg" class="card-img-top">
      <p class="grey"><a href="#" class="button">Acheter</a></p>
    </div>
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