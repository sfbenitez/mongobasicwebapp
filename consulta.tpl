%include('header.tpl')

  %for elem in cursor:
    <p> {{elem}} </p>
  %end

%include('footer.tpl')
