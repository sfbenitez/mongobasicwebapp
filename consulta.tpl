
<h1>Consulta sobre: {{nombre}} </h1>

% for elem in datos:
   <p>Barrio / Calle:  {{elem['borough']}}, Nº: {{elem['address']['building']}}</p>
   #<p> {{elem['grades']['score]]}} </p>
   <p>Tipo de cocina:  {{elem['cuisine']}} </p>
% end

