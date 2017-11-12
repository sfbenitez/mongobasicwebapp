%include('header.tpl')
<h3>Introduzca sus datos y elija la tabla a consultar.</h3>
	<form action="consulta" method="post">
		<label> Usuario: </label>
		<input type="text" name="username" required/>
		<label> Contrasea: </label>
                <input type="password" name="password" required/>
		<input type="submit" value="Go">
	</form>
%include('footer.tpl')
