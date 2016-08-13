<!-- Logo & Navigation -->
<nav class="site-navigation">
	<div class="container">
		<div class="logo">
			<a class="logo-default" href="{{ url_for('site/home') }}"><img src="{{ url_for('/images/logo.png') }}" alt="logo"></a>
			<a class="logo-transparent" href="{{ url_for('site/home') }}"></a>
		</div>

		<a class="navbar-toggle" href="#" data-toggle="offcanvas"><i class="fa fa-bars"></i></a>

		<ul class="nav-menu">
			<li><a class="{% if page.id == 'home' %} active {% endif %}" href="{{ url_for('') }}">Home</a></li>
			<li><a class="{% if page.id == 'projects' %} active {% endif %}" href="{{ url_for('projects') }}">Projects</a>
				<ul>
					{% for project in projects  %}
					
					{% set key = project.key %}
					<li><a href="{{ url_for(key) }}">{{ i18n[key] }}</a></li>
					
					{% endfor %}
				</ul></li>
			<li><a class="{% if page.id == 'contribute' %} active {% endif %}" href="{{ url_for('contribute') }}">Contribute</a></li>
			<!-- <li><a class="{% if page.id == 'blog' %} active {% endif %}" href="blog.html">Blog</a></li> -->
			<li><a class="{% if page.id == 'contact' %} active {% endif %}" href="{{ url_for('contact') }}">Contact</a></li>
		</ul>
	</div>
</nav>
<!-- END Logo & Navigation -->