<%@ include file="../common/header.jspf" %>
<%@ include file="../common/navigation.jspf" %>

	<div class="container">
		Welcome!
		<form action="/login.do" method="post">
			Enter user name: <input type="text" name="username"> Enter
			password: <input type="password" name="password"> <input
				type="submit" value="Login"">
		</form>

		<p>${loginError}</p>
	</div>

<%@ include file="../common/footer.jspf" %>