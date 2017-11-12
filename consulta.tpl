%include('header.tpl')

<h1>Consulta sobre: {{coleccion}}</h1>
%for elem in cursor:
 <p> {{elem}} </p>
%end

%include('footer.tpl')
