{% extends 'includes/landing-layout.swig' %}

{% block header %}
<div class="header-image bg-img-fact">
  <div class="container">
    <h1 class="logo">
      <strong class="title">J<font color="#962B2B">S</font>pare NoSQL Database</strong><strong class="subtitle">&nbsp;</strong>&nbsp;Minimalist and functional
    </h1>
    <h4>Please wait, we are working....</h4>
  </div>
</div>
{% endblock %}

{% block main %}
<!-- Main container -->

<section>
  <div class="container">

    <a href="{{ theme.social.GitHub }}"><img
      style="position: absolute; top: 0; right: 0; border: 0;"
      src="https://camo.githubusercontent.com/38ef81f8aca64bb9a64448d0d70f1308ef5341ab/68747470733a2f2f73332e616d617a6f6e6177732e636f6d2f6769746875622f726962626f6e732f666f726b6d655f72696768745f6461726b626c75655f3132313632312e706e67"
      alt="Fork me on GitHub"
      data-canonical-src="https://s3.amazonaws.com/github/ribbons/forkme_right_darkblue_121621.png"></a>

    <p class="lead"> The <b>JSpare 4Vert.x</b> will be improve your experience with your Vert.x applications. Vert.x is event driven and non blocking. This means your app can handle a lot of concurrency using a small number of kernel threads. Vert.x lets your app scale with minimal hardware.</p>

    <div class="col-md-8 col-sm-12 col-xs-6">
      <div class="features-content">
        <h4>JSDB Features</h4>

        <ul class="list-features">
          <li>Reactive and Scallable applications</li>
          <li>Develop Web applications with agility and intuitively</li>
          <li>Container for components injection and inversion control</li>
          <li>All Vert.x Web features</li>
          <li>Work with intuitive conventions</li>
          <li>Have fun</li>
        </ul>
      </div>
    </div>

    <div class="col-md-4 col-sm-12 col-xs-12">

      <table class="project-table table table-bordered table-striped table-info">
        <thead>
          <tr>
            <th class="text-center" colspan="2">JSpare NoSQL Database</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>Stable Version:</td>
            <td>1.0.0-SNAPSHOT</td>
          </tr>
          <tr>
            <td>Publication Date:</td>
            <td>05-11-2016</td>
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
            <td>1.0.0-SNAPSHOT <span class="label label-warning">SNAPSHOT</span></td>
            <td>
              <a href="{{ url_for('docs') }}">Docs</a> | <a href="https://bintray.com/jspare/maven/4vertx">Download</a>
            </td>
          </tr>
          
          
        </tbody>
      </table>

      <div class="project-quicklink">
        <ul>
          <li><a href="{{ theme.social.Twitter }}"><i class="fa fa-twitter fa-2x"></i></a></li>
          <li><a href="{{ theme.social.Github }}"><i class="fa fa-github fa-2x"></i></a></li>
          <li><a href="{{ theme.social.stackOverflow }}"><i class="fa fa-stack-overflow fa-2x"></i></a></li>
        </ul>
      </div>

    </div>


  </div>
</section>

<!-- END Main container -->
{% endblock %}