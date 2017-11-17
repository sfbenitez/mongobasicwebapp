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
      <h4>Conexion</h4>
      <form action="/login" method="post">
        <label for="user">Usuario: </label>
        <input name="user" type="text" value="sergio">
        <br>
        <label for="password">Contraseña: </label>
        <input name="password" type="password">
        <br>
        <label for="database">Base de datos: </label>
        <input name="database" type="text" value="ABD">
        <br>
        <label for="server">Servidor MongoDB: </label>
        <input name="server" type="text" value="192.168.1.132">
        <br>
        <input value="Acceder" type="submit">
      </form>
    </div>
    <div id="footer">
      Copyright &copy; textured_blue | <a href="http://validator.w3.org/check?uri=referer">HTML5</a> | <a href="http://jigsaw.w3.org/css-validator/check/referer">CSS</a> | <a href="http://www.html5webtemplates.co.uk">Free CSS Templates</a>
    </div>
  </div>
</body>
</html>
