<!DOCTYPE HTML>
<html>

<head>
  <title>Basic MongoDB APP</title>
  <meta name="description" content="Basic web app with mongodb backend" />
  <meta name="keywords" content="mongodb, web, app" />
  <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
  <link rel="stylesheet" type="text/css" href="style/style.css" title="style" />
</head>

<body>
  <div id="main">
    <div id="header">
      <div id="logo">
        <div id="logo_text">
          <!-- class="logo_colour", allows you to change the colour of the text -->
          <h1>Mongo DB APP!<span class="logo_colour">blue</span></h1>
          <h2>Simple. Contemporary. App.</h2>
        </div>
      </div>
      <div id="menubar">
      </div>
    </div>

    <div id="site_content">
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
	<!-- This is bad, i know, still learning ;)
	<input type="hidden" name="server" value={{server}}>
	<input type="hidden" name="database" value={{database}}>
	<input type="hidden" name="password" value={{password}}>
	-->
	<input type="submit" value="Go">
      </form>
    </div>
    <div id="footer">
      Copyright &copy; textured_blue | <a href="http://validator.w3.org/check?uri=referer">HTML5</a> | <a href="http://jigsaw.w3.org/css-validator/check/referer">CSS</a> | <a href="http://www.html5webtemplates.co.uk">Free CSS Templates</a>
    </div>
  </div>
</body>
</html>

