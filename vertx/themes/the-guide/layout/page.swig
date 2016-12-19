{% extends 'includes/layout.swig' %}


{% block header %}

<div class="header-image bg-red-dark no-overlay no-padding">
	<div class="container">
		<br> <br>
		<h1>{{ page.nav_title }}</h1>
		<h4>{{ page.nav_message }}</h4>
		<br> <br>
	</div>
</div>

{% endblock %}

{% block main %}

{{ page.content }}

{% endblock %}
