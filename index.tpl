	<h2>Bienvenido, {{user}}</h2>
	<h3>Nº Total de restaurantes: {{count}}</h3>
	<h3>Se Mostrarán sólo los 50 primeros</h3>
	<form action="consulta" method="post">
                <label> Selecciona el restaurante: </label>
		<select name="nombre">
		% for linea in selector:
		  <option>{{linea['name']}}</option>
                % end
		</select>
		<input type="submit" value="Go">
	</form>
