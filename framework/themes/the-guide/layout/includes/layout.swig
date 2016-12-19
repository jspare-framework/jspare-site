<!doctype html>
<html lang="{{ config.language }}">
<head>
  <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  {% include 'head.swig' %}

  {% block head %}{% endblock %}

</head>
<body class="sticky-nav">

  <!-- Site header -->
  <header class="site-header"> 
    
    {% include 'nav.swig' %}

    {% block header %}{% endblock %}
     
  </header>
  <!-- END Site header -->

  <main> 
    {% block main %}{% endblock %} 
  </main>

  <!-- Site footer -->
  <footer class="site-footer"> 
    {% include 'footer.swig' %} 
  </footer>
  <!-- END Site footer -->

  <!-- Scripts -->  
  {% if theme.scripts !== undefined && theme.scripts.length > 0 %}
  {{ js(theme.scripts) }}
  {% endif %}
</body>
</html>