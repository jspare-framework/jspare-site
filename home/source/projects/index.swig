---
id: projects
title: Projects
nav_title: JSpare Projects
nav_message: Loaded with awesome features and solutions for your applications.
date: 2016-07-21 13:40:50
projects:
  - key: core
    name: Java Container
    description: Write componentized and modern Java applications.
    icon: coffee
    link: http://framework.jspare.org
  - key: vertx
    name: JSpare Vert.x
    description: Improve your Vert.x experience with JSpare Vert.x
    icon: magic
    link: http://vertx.jspare.org
  - key: jsdb
    name: NoSQL Database
    description: JSDB, is a simple and minimalist NoSQL database.
    icon: database
    link: http://jsdb.jspare.org
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

		{% for project in projects  %}
			<div class="col-md-6 col-sm-12 col-xs-12">
				<div class="project">
					<h5 class="project-title" >J<font color="#962B2B">S</font>pare {{ project.name }}</h5>
					<p>{{ project.description }}</p>
					<a class="btn btn-danger btn-lg" href="#" style="margin-right: 12px;">Learn more</a>
				</div>
			</div>
		{% endfor  %}
			
		</div>
	</div>
</section>
