%include('header.tpl')

<h1>Consulta sobre: </h1>
for con in cursor:
    print con['name']

%include('footer.tpl')
