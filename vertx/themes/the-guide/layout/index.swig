{% extends 'includes/landing-layout.swig' %}

{% block header %}
<div class="header-image bg-img-fact">
  <div class="container">
    <h1 class="logo">
      <strong class="title">J<font color="#962B2B">S</font>pare 4Vert.x</strong><strong class="subtitle">&nbsp;</strong>&nbsp;Simple, powerfull and intuitive.
    </h1>
    <h4>Improving your Vert.x experience</h4>
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

    <p class="lead"> If you stay here, that is because you know about of the incredible thinks that the Vert.x can do. I have no doubt that it is amazing and extremely versatile for their tasks. But, what if I say that we can extract more! And we can! The <b>JSpare 4Vert.x</b> will improve your experience with your Vert.x applications. We persue conventions and we seek to make bright ideas of Vert.x are used and improved. Try it, I'm sure your team and you will not regret.</p>

    <div class="col-md-8 col-sm-12 col-xs-6">
      <div class="features-content">
        <h4>4Vert.x Features</h4>

        <ul class="list-features">
          <li>Reactive and Scallable applications</li>
          <li>Develop Web applications with agility and intuitively</li>
          <li>Container for components injection and inversion control</li>
          <li>All Vert.x Web features</li>
          <li>Work with intuitive conventions</li>
          <li>Have fun</li>
        </ul>

        <h4>References</h4>

        <ul class="list-features">
          <li><a href="http://vertx.io">Access Vert.x official page</a></li>
        </ul>
      </div>
    </div>


    <div class="col-md-4 col-sm-12 col-xs-12">

      <table class="project-table table table-bordered table-striped table-info">
        <thead>
          <tr>
            <th class="text-center" colspan="2">JSpare 4Vert.x</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>Stable Version:</td>
            <td>1.0.0-RC1</td>
          </tr>
          <tr>
            <td>Publication Date:</td>
            <td>05-08-2016</td>
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
            <td>1.0.0-RC1 <span class="label label-primary">CURRENT</span></td>
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