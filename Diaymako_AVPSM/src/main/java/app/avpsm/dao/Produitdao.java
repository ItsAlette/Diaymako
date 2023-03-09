package app.avpsm.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import app.avpsm.entities.ConnexionRapide;
import app.avpsm.entities.Produit;

public class Produitdao {
	
	
	
	 private Connection connection;
	    
	 public Produitdao() 
	 {
		 connection = ConnexionRapide.getConnection();
	 }
	    
	    public void ajouterProduit(Produit produit, int idUser) throws SQLException {
	        PreparedStatement stmt = null;
	        try {
	            String query = "INSERT INTO produit (idUser, nom, description, prix, etat, image) VALUES (?, ?, ?, ?, ?, ?)";
	            stmt = connection.prepareStatement(query);
	            stmt.setInt(1, idUser);
	            stmt.setString(2, produit.getNom());
	            stmt.setString(3, produit.getDescription());
	            stmt.setDouble(4, produit.getPrix());
	            stmt.setString(5, produit.getEtat());
	            stmt.setString(6, "im_passe_partout.jpg");
	            stmt.executeUpdate();
	        } finally {
	            if (stmt != null) {
	                stmt.close();
	            }
	        }
	    }
	
	
	    public Produit getProduitById(int idProduit) {
	        Connection con = null;
	        PreparedStatement ps = null;
	        ResultSet rs = null;
	        Produit produit = null;
	        try {
	            con = ConnexionRapide.getConnection();
	            ps = con.prepareStatement("SELECT * FROM produits WHERE id = ?");
	            ps.setInt(1, idProduit);
	            rs = ps.executeQuery();
	            if (rs.next()) {
	                produit = new Produit();
	                produit.setNom(rs.getString("nom"));
	                produit.setDescription(rs.getString("description"));
	                produit.setPrix(rs.getDouble("prix"));
	                produit.setEtat(rs.getString("etat"));
	
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();}
	        
	        return produit;
	    }
	    
	    
	public List<Produit> getProduitsUtilisateur(int idUtilisateur) 
	{
        List<Produit> produits = new ArrayList<>();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try 
        {
            // Requête pour récupérer les produits de l'utilisateur connecté
            stmt = connection.prepareStatement("SELECT * FROM produit WHERE idUser = ?");
            stmt.setInt(1, idUtilisateur);
            rs = stmt.executeQuery();
            while (rs.next()) {
                Produit produit = new Produit();
                produit.setNom(rs.getString("nom"));
                produit.setDescription(rs.getString("description"));
                produit.setPrix(rs.getDouble("prix"));
                produit.setEtat(rs.getString("etat"));
                produit.setImage(rs.getString("image"));
                produits.add(produit);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Fermeture des ressources
            try {
                if (rs != null) rs.close();
                if (stmt != null) stmt.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return produits;
    }


    
    

}
