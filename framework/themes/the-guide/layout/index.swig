{% extends 'includes/landing-layout.swig' %}

{% block header %}
<div class="header-image bg-img-fact">
  <div class="container">
    <h1 class="logo">
      <strong class="title">J<font color="#962B2B">S</font>pare Framework</strong><strong class="subtitle">&nbsp;</strong>&nbsp;Simple, powerfull and intuitive.
    </h1>
    <h4>A lightweight and simple container for your Java applications.</h4>
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

    <p class="lead"> The JSpare Framework provides an environment and container out of the box. Use dependency injection providing on demand resources for your Java Applications. We are uncoupled of any other package and lightweight.</p>

    <p>You should ask yourself why to use a different framework for do this? Our answer is the following, we do not want to be compared to the giants, we were made to run out of the box, in applications that do not require JavaEE resources or a complete ecosystem ... to do this, use the others.</p>

    <p><b>But if you need a quick response to a lightweight and independent application, we're a great option!</b></p>

    <div class="col-md-8 col-sm-12 col-xs-6">
      <div class="features-content">
        <h4>Core Features</h4>

        <ul class="list-features">
          <li>Lightweight, Modern and Intuitive Java Container</li>         
          <li>We are easy to configure</li>          
          <li>Forget all annoying applications mapping, like the legacy of xml...</li>
          <li>Dependency Injection with a simple more not simplist container!</li>          
          <li>Easy way to create components and resources, uncoupling your architecture</li>
          <li>Qualification and a practical way to change implementation of a component</li>          
          <li>Simple conventions, for improve your experience</li>
          <li>Easy Bootstrap for your Java application</li>
          <li>Dependency Injection for your Android application</li>         
        </ul>
      </div>
    </div>


    <div class="col-md-4 col-sm-12 col-xs-12">

      <table class="project-table table table-bordered table-striped table-info">
        <thead>
          <tr>
            <th class="text-center" colspan="2">JSpare Core Container</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>Stable Version:</td>
            <td>2.0.1</td>
          </tr>
          <tr>
            <td>Publication Date:</td>
            <td>01-17-2016</td>
          </tr>
          <tr>
            <td>Repository:</td>
            <td><a href="https://github.com/jspare-projects/jspare-container"><i class="fa fa-github fa-2x"></i> Github</a></td>
          </tr>
          <tr>
            <td>Issues: </td>
            <td><a href="https://github.com/jspare-projects/jspare-container/issues"> Show</a></td>
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
            <td>2.0.1 <span class="label label-primary">CURRENT</span></td>
            <td>
              <a href="{{ url_for('docs') }}">Docs</a> | <a href="http://www.javadoc.io/doc/org.jspare/jspare-core/2.0.1">API</a> | <a href="http://repo1.maven.org/maven2/org/jspare/jspare-core/2.0.0/">Download</a>
            </td>
          </tr>
          <tr>
            <td>1.0.0</td>
            <td>
              <a href="http://www.javadoc.io/doc/org.jspare/jspare-core/1.0.0">API</a> | <a href="http://repo1.maven.org/maven2/org/jspare/jspare-core/1.1.0/">Download</a>
            </td>
          </tr>
          
          
        </tbody>
      </table>

      <div class="project-quicklink">
        <ul>
          <li><a href="{{ theme.social.Twitter }}"><i class="fa fa-twitter fa-2x"></i></a></li>
          <li><a href="{{ theme.social.GitHub }}"><i class="fa fa-github fa-2x"></i></a></li>
          <li><a href="{{ theme.social.stackOverflow }}"><i class="fa fa-stack-overflow fa-2x"></i></a></li>
        </ul>
      </div>

    </div>

    <hr>

    <ul class="link-list cols-1">
      <li>
        <h5>Also interest</h5>
        
        <a href="{{ url_for('get-started') }}">Get Started</a>
        <a href="{{ url_for('docs') }}">Docs</a>
        <a href="{{ url_for('downloads') }}">Downloads</a>
        <a href="{{ url_for('contribute') }}">Contribute</a>
      </li>
    </ul>

  </div>
</section>

<!-- END Main container -->
{% endblock %}