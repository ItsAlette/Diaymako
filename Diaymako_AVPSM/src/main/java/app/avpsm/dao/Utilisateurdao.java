package app.avpsm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import app.avpsm.entities.ConnexionRapide;
import app.avpsm.entities.Utilisateur;

public class Utilisateurdao {
	
	private static final String SELECT_BY_LOGIN = "SELECT * FROM utilisateur WHERE login = ?";
    private static final String INSERT = "INSERT INTO utilisateur (nom, prenom, telephone, login, motdepasse) VALUES (?, ?, ?, ?, ?)";

    private Connection connection;

    public Utilisateurdao() 
    {
        // Initialisation de la connexion à la base de données
        connection = ConnexionRapide.getConnection();
    }

    public Utilisateur getByLogin(String login) 
    {
        Utilisateur utilisateur = null;
        try {
            PreparedStatement statement = connection.prepareStatement(SELECT_BY_LOGIN);
            statement.setString(1, login);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                utilisateur = new Utilisateur();
                utilisateur.setIdUser(resultSet.getInt("idUser"));
                utilisateur.setNom(resultSet.getString("nom"));
                utilisateur.setPrenom(resultSet.getString("prenom"));
                utilisateur.setTelephone(resultSet.getString("telephone"));
                utilisateur.setLogin(resultSet.getString("login"));
                utilisateur.setMotdepasse(resultSet.getString("motdepasse"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return utilisateur;
    }

    
    public void EnregistrerUser(Utilisateur utilisateur) 
    {
        try {
            PreparedStatement statement = connection.prepareStatement(INSERT);
            statement.setString(1, utilisateur.getNom());
            statement.setString(2, utilisateur.getPrenom());
            statement.setString(3, utilisateur.getTelephone());
            statement.setString(4, utilisateur.getLogin());
            statement.setString(5, utilisateur.getMotdepasse());
            
            System.out.println(statement);
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

}
