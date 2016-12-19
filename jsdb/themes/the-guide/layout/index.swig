{% extends 'includes/landing-layout.swig' %}

{% block header %}
<div class="header-image bg-img-fact">
	<div class="container">
		<h1 class="logo">
			<strong class="title">J<font color="#962B2B">S</font>pare NoSQL Database</strong><strong class="subtitle">&nbsp;</strong>&nbsp;Minimalist and functional
		</h1>
		<h4>Always trying to deliver the best solutions!</h4>
	</div>
</div>
{% endblock %}

{% block main %}
<!-- Main container -->

<section id="sec-contribute">
	<div class="container">

		<a href="https://github.com/jspare-projects/jsdb"><img
			style="position: absolute; top: 0; right: 0; border: 0;"
			src="https://camo.githubusercontent.com/38ef81f8aca64bb9a64448d0d70f1308ef5341ab/68747470733a2f2f73332e616d617a6f6e6177732e636f6d2f6769746875622f726962626f6e732f666f726b6d655f72696768745f6461726b626c75655f3132313632312e706e67"
			alt="Fork me on GitHub"
			data-canonical-src="https://s3.amazonaws.com/github/ribbons/forkme_right_darkblue_121621.png"></a>

			<header class="section-header">
				<h2>Innovating and evolving</h2>
				<p>Always thinking about the community, you make some decisions</p>
			</header>

			<p class="lead"> Thank you for accessing our page, if you are here it is because you have heard or been interested in this initiative. We inform you that by the time this project has been <b>discontinued</b>, we are focusing our efforts on other projects, more information please contact us. We remember that we are talking about an open source project, the community can no doubt help, but at this moment our team is no longer focused on this project, we count of course with all the understanding.</p>

			<br>

			<div class="col-md-8 col-sm-12 col-xs-6">
				<div class="features-content">
					<h4>JDBC Features</h4>

					<ul class="list-features">
					<li>Minimalist</li>
						<li>Simple APIs and Rest service</li>
						<li>Fast</li>
						<li>Key/Value and Simple Document Orientation</li>
						<li>Simple Structure of</li>
						<li>Router for embeding app with express</li>
					</ul>

					<h4>References</h4>

					<ul class="list-features">
						<li><a href="https://github.com/jspare-projects/jsdb/tree/master/jsdb-server">Access GitHub Page</a></li>
					</ul>
				</div>
			</div>


			<div class="col-md-4 col-sm-12 col-xs-12">

				<table class="project-table table table-bordered table-striped table-info">
					<thead>
						<tr>
							<th class="text-center" colspan="2">JSDB</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>Stable Version:</td>
							<td>0.0.3</td>
						</tr>
						<tr>
							<td>Publication Date:</td>
							<td>01-05-2016</td>
						</tr>
						<tr>
							<td>Repository:</td>
							<td><a href="{{ theme.social.Github }}"><i class="fa fa-github fa-2x"></i> Github</a></td>
						</tr>
						<tr>
							<td>Issues: </td>
							<td><a href="{{ theme.social.Github }}/issues"> Show</a></td>
						</tr>
					</tbody>
					<thead>
						<tr>
							<th class="text-center" colspan="2">Releases</th>
						</tr>
						<tr>
							<th>Version</th>
							<th>Reference</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>0.0.3 <span class="label label-primary">CURRENT</span></td>
							<td>
								<a href="https://github.com/jspare-projects/jsdb">Docs</a> | <a href="https://www.npmjs.com/package/jsdb-server">Download</a>
							</td>
						</tr>


					</tbody>
				</table>

				<div class="project-quicklink">
					<ul>
						<li><a href="{{ theme.social.Twitter }}"><i class="fa fa-twitter fa-2x"></i></a></li>
						<li><a href="https://github.com/jspare-projects/jsdb"><i class="fa fa-github fa-2x"></i></a></li>						
					</ul>
				</div>

			</div>


		</div></section>


		<!-- END Main container -->
		{% endblock %}