<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="inc/header.jsp" %>
<div id="corps">
	<h1 id="titre-principal">Ajout d'un nouvel utilisateur </h1>
	<p class="erreur">${statusMessage}</p>
<form  method="post">
		<fieldset>	
			<legend>Ajout Utilisateur</legend>
			<div class="formItem"><label>Nom</label>
			<input type="text" name="nom" value="${utilisateur.nom }"> 
			<span class="erreur">${ erreurs.nom }</span>
		</div>
			<div class="formItem"><label>Prenom</label>
			<input type="text" name="prenom" value="${utilisateur.prenom }"> 
			<span class="erreur">${erreurs.prenom}</span>
		</div>
			<div class="formItem"><label>Login</label>
			<input type="text" name="login" value="${utilisateur.login }"> 
			<span class="erreur">${erreurs.login}</span>
		</div>
			<div class="formItem"><label>Password</label>
			<input type="password" name="password" value="${utilisateur.password }"> 
			<span class="erreur">${erreurs.password}</span>
		</div>
			<div class="formItem"><label>Confirm Password</label>
			<input type="password" name="passwordBis"> 
			<span class="erreur">${erreurs.passwordBis}</span>
		</div>
			<input type="submit" value="Soumettre">
		</fieldset>
	</form>
</div>
<%@include file="inc/footer.jsp" %>