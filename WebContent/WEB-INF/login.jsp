<%String APP_ROOT= request.getContextPath(); %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <link rel="stylesheet" href="<%= APP_ROOT %>/css/stjljyle.css">
    <link rel="stylesheet" href="<%= APP_ROOT %>/style.css">

<div id="corps">
	<h1 id="titre-principal">Authentification </h1>
	<p> ${statusMessage}</p>

<form  method="post">
<c:if test="${connectionFailed == true }">
	<p class="erreur">Login ou mot de passe incorrecte</p>
</c:if>
		<fieldset>	
			<legend>Connexion</legend>
			<div class="formItem"><label>Login</label>
			<input type="text" name="login" value="${login }"></div>
			<div class="formItem"><label>Password</label>
			<input type="password" name="password"></div>
			<input type="submit" value="Soumettre">
		</fieldset>
	</form>
</div>
 <%@include file="inc/footer.jsp" %>