<!-- Logo & Navigation -->
<nav class="site-navigation">
	<div class="container">
		<div class="logo">
			<a class="logo-default" href="{{ url_for('/') }}"><img src="{{ url_for('/images/logo.png') }}" alt="logo"></a>
			<a class="logo-transparent" href="{{ url_for('/') }}"></a>
		</div>

		<a class="navbar-toggle" href="#" data-toggle="offcanvas"><i class="fa fa-bars"></i></a>

		<ul class="nav-menu">
			<li><a class="{% if page.id == 'home' %} active {% endif %}" href="{{ url_for('/') }}">Home</a></li>
			<li><a href="http://jspare.org">JSpare.org</a></li>
		</ul>
	</div>
</nav>
<!-- END Logo & Navigation -->