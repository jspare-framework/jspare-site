{% extends 'includes/landing-layout.swig' %}

{% block header %}
<!-- Header image -->
<div class="header-image bg-img-index-header">
  <div class="container">
    <h1 class="logo">
      <strong class="title">J<font color="#962B2B">S</font>pare<font color="#fff">.org</font>
      </strong> <strong class="subtitle">&nbsp;</strong>Powerful and intuitive.
    </h1>
    <h5>A new way to make it simple just be simple!</h5>
    <br>
    <p>
      <a class="btn btn-danger btn-lg" href="#sec-intro" style="margin-right: 12px;">Learn more</a>
      <a class="btn btn-dark btn-lg hidden-xs" href="#sec-projects"><i
        class="fa fa-sitemap"></i>View all projects</a>
    </p>
  </div>
</div>
<!-- END Header image -->
{% endblock %}

{% block main %}
<!-- Main container -->

<section id="sec-intro" class="no-border-bottom">
  <div class="container">
    <header class="section-header">
      <span>Who we are</span>
      <h2>JSpare.org</h2>
      <p>Learn a little more about the jspare.org initiative, and what are our plans and goals for the future.</p>
    </header>

    <p class="text-cols-2 text-justify">
      <p>We are a non-profit foundation and were created in order to provide the software community, tools and open source products, which which can assist and complement the work on a daily basis.</p> 
      <p>Our mission, stand to what now exists but does not meet any needs, or meet, are not as simple as it could or should be. Our aim is to build and deliver better solutions to the community, with the help of the same, we want to increasingly innovate and transform the software market.</p>
      <p>We believe in a decentralized structure, we believe in meritocracy, each developer can contribute by creating and improving our tools, everyone is welcome and we believe that the only way you can build and establish our ideals.</p>
      <p>We invite you to join our family, the JSpare.org believes in the community! We were born free, we will always be free!</p>
    </p>
  </div>
</section>

<!-- END Section - Features --> <!-- Section - Facts -->
<section id="sec-fact" class="section-sm no-border-bottom bg-img-fact overlay-black">
  <div class="container">

    <header class="section-header">
      <h2>Some numbers</h2>
    </header>

    <div class="row">
      <div class="counter color-alt col-md-3 col-sm-6">
        <i class="fa fa-users"></i>
        <p>
          <span data-from="0" data-to="200">0</span>+
        </p>
        <h6>Users</h6>
      </div>

      <div class="counter color-alt col-md-3 col-sm-6">
        <i class="fa fa-clock-o"></i>
        <p>
          <span data-from="0" data-to="1200" data-speed="2200">0</span>+
        </p>
        <h6>Coding</h6>
      </div>

      <div class="counter color-alt col-md-3 col-sm-6">
        <i class="fa fa-github"></i>
        <p>
          <span data-from="0" data-to="100" data-speed="2400">0</span>%
        </p>
        <h6>Open Source Code</h6>
      </div>

      <div class="counter color-alt col-md-3 col-sm-6">
        <i class="fa fa-code"></i>
        <p>
          <span data-from="0" data-to="10000" data-speed="3000">0</span>+
        </p>
        <h6>Written code lines</h6>
      </div>
    </div>

  </div>
</section>
<!-- END Section - Facts --> <!-- Section - Code view -->
<section id="sec-projects" class="no-border-bottom">
  <div class="container">

    <h4>Projects</h4>
    <p>Each project developed by jspare.org is independent and free, that is, we have languages, metodoligas and different architectures, since each project has its purpose and audience.</p>
    <br>
    
    {% for project in projects  %}

      <div class="col-md-6 col-sm-12 col-xs-12">
        <div class="icon">
          <i class="fa fa-{{ project.icon }}  fa-5x"></i>
        </div>
        
        {% set key = project.key %}
        {% set description = format('%s_description', project.key) %}

        <h5>{{ i18n[key] }}</h5>
        <p>{{- i18n[description] -}}</p>
        
        <a class="btn btn-danger btn-lg" href="{{ app.command(key) }}" style="margin-right: 12px;">Learn more</a>
      </div>
      
    {% endfor  %}
    
  </div>
</section>
<!-- END Section - Code view --> <!-- Section - Testimonials -->
<section id="sec-testimonials" class="no-border-bottom bg-gray-light">
  <div class="container">
    <header class="section-header">
      <span>From the creators</span>
      <h2>For you</h2>
      <p>Make the difference with JSpare Projects</p>
    </header>

    <ul class="testimonials">
      <li>
        <p>
          "The <strong> JSpare Framework </strong> was developed as a palliative solution to the products that are now on the market, I believe we can make a difference in small things, facilitating the paradigms of language and making it increasingly competitive in order to make programmers that one day already liked Java. Program needs to be fun and intuitive. "
        </p>
        <h6>
          Paulo Lima (Project Lead)
        </h6>
      </li>

      <li>
        <p>I believe technology improves people's lives</p>
        <h6>
          Matheus Vessaro (Contributor)
        </h6>
      </li>
    </ul>

  </div>
</section>
<!-- END Section - Testimonials --> <!-- Section - Purchase -->
<section id="sec-purchase" class="no-border-bottom bg-img-purchase bg-repeat text-center">
  <div class="container">
    <h2 style="font-weight: 200">
      <strong> Did you like? </strong> Join us
    </h2>
    <br> <br> <a class="btn btn-lg btn-round btn-success" href="{{ app.command('site/contribute') }}"> Learn more
    </a>
  </div>
</section>
<!-- END Section - Purchase --> </main>
<!-- END Main container -->
{% endblock %}