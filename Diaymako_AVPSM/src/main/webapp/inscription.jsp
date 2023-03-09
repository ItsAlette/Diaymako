<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Inscription</title>
<style>
	*{margin:0;padding:0;box-sizing:border-box;-webkit-font-smoothing:antialiased}
		button a{text-decoration: none;color:white;backgroung-color:black;}
		body{background:#16161D;font-family:rubik,sans-serif}
		form{background:#fff;width:500px;margin:65px auto;display:-webkit-box;display:flex;-webkit-box-orient:vertical;-webkit-box-direction:normal;flex-direction:column;border-radius:4px;box-shadow:0 2px 25px rgba(0,0,0,.2)}
		form h1{padding:35px 35px 0;font-weight:300}
		form .content{padding:35px;text-align:center}
		form .input-field{padding:12px 5px}
		form .input-field input{font-size:16px;display:block;font-family:rubik,sans-serif;width:100%;padding:10px 1px;border:0;border-bottom:1px solid #747474;outline:none;-webkit-transition:all .2s;transition:all .2s}
		form .input-field input::-webkit-input-placeholder{text-transform:uppercase}.login-form .input-field input::-moz-placeholder{text-transform:uppercase}
		form .input-field input:-ms-input-placeholder{text-transform:uppercase}
		form .input-field input::-ms-input-placeholder{text-transform:uppercase}
		form .input-field input::placeholder{text-transform:uppercase}
		form .input-field input:focus{border-color:#222}
		form a.link{text-decoration:none;color:#747474;letter-spacing:.2px;text-transform:uppercase;display:inline-block;margin-top:20px}
		form .action{display:-webkit-box;display:flex;-webkit-box-orient:horizontal;-webkit-box-direction:normal;flex-direction:row}
		form .action input{width:100%;border:none;color:white;padding:18px;font-family:rubik,sans-serif;cursor:pointer;text-transform:uppercase;background:#e8e9ec;color:#777;border-bottom-left-radius:4px;border-bottom-right-radius:0;letter-spacing:.2px;outline:0;-webkit-transition:all .3s;transition:all .3s}
		form .action input:hover{background:#d8d8d8}
		form .action input:nth-child(2){background:black;color:#fff;border-bottom-left-radius:0;border-bottom-right-radius:4px}
		form .action input:hover{background:grey}
</style> 
</head>
<body>

			<form action="<%= request.getContextPath() %>/enregistrerinscription" method="post">
			<h1>INSCRIPTION</h1>
			<div class="content">
			<div class="input-field">
			<input type="text" placeholder="Nom" name="nom">
			</div>
			<div class="input-field">
			<input type="text" placeholder="Prenom" name="prenom">
			</div>
			<div class="input-field">
			<input type="tel" placeholder="Numero" name="telephone">
			</div>
			<div class="input-field">
			<input type="text" placeholder="Login" name="login">
			</div>
			<div class="input-field">
			<input type="password" placeholder="Mot de passe" name="motdepasse"></input>
			</div>
			<a href="login.jsp" class="link">J'ai deja un compte</a>
			</div>
			<div class="action">
				<input type="submit" value="S'inscrire">
			</div>
			
			
		
	</form>

</body>
</html>