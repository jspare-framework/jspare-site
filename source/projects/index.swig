---
title: Projects
nav_title: JSpare Projects
nav_message: Loaded with awesome features and solutions for your applications.
date: 2016-07-21 13:40:50
---

<!-- Navigation -->
<nav class="page-navigation full-topbar">
	<ul class="nav">
		<li><a href="#sec-projects">Projects</a></li>
	</ul>
</nav>
<!-- END Navigation -->

<section id="sec-projects">
	<div class="container">

		<h4>Projects</h4>
		<p>Each project developed by jspare.org is independent and free, that is, we have languages, metodoligas and different architectures, since each project has its purpose and audience.</p>
		<br>
		<div class="row">

		{% for t in theme.array  %}
{{ t }}
		{% endfor  %}
	
		{% for project in theme.projects  %}
			
			<div class="col-md-6 col-sm-12 col-xs-12">
				<div class="project">
					<div class="icon">
						<i class="fa fa-{{ project.icon }} fa-5x"></i>
					</div>
					<h5>{{ project.name }}</h5>
					<p>{{ project.description }}</p>
					<a class="btn btn-danger btn-lg" href="#" style="margin-right: 12px;">Learn more</a>
				</div>
			</div>
		{% endfor  %}
			
		</div>
	</div>
</section>
