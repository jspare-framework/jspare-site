---
id: docs
title: Docs
nav_title: Documentation
nav_message: Guideline for start with 4Vert.x
date: 2016-07-21 13:40:50
---

<!-- Navigation -->
<nav class="page-navigation full-topbar">
	<ul class="nav">
		<li><a href="#sec-gettingstarted">Get Started</a></li>
		<li><a href="#sec-core">JSpare Container</a></li>
		<li><a href="#sec-server">4Vertx</a></li>
		<li><a href="#sec-contribute">Contribute</a></li>
		<li><a href="#sec-architecture">Architecture</a></li>
	</ul>
</nav>
<!-- END Navigation -->

<section>
	<div class="container">
	
		<header class="section-header">
			<h2>Content</h2>
		</header>
	
		<ul class="link-list">
			<li>
				 <h5>Get Started</h5>
				 <a href="#sec-gettingstarted-dep">Dependencies</a>
				 <a href="#sec-gettingstarted-project">Structuring a project</a>
			</li>
			<li>
				<h5>JSpare Container</h5>
				<a href="#sec-core-boostrap">Bootstrap</a>
				<a href="#sec-core-env">Environment</a>
				<a href="#sec-core-conf">Configuration</a>
				<a href="#sec-core-my">Components & Injection</a>
				<a href="#sec-core-appcon">Application Context</a>
			</li>
			
			<li>
				<h5>4Vertx</h5>
				<a href="#sec-server-builders">Builders</a>
				<a href="#sec-server-routes">Routes</a>
				<a href="#sec-server-controller">Route & Handlers</a>
				<a href="#sec-server-mapping">Mapping</a>
				<a href="#sec-server-handling">Handling</a>
				<a href="#sec-server-reqres">Request & Response</a>
				<a href="#sec-server-model">Model</a>
				<a href="#sec-server-filt">Middlewares</a>
			</li>
			
			<li>
				<h5>Contribute</h5>
				<a href="#sec-contribute-issues">Issues / Bugs</a>
				<a href="#sec-contribute-blog">Development Blog</a>
				<a href="#sec-contribute-changelog">Changelog</a>
				<a href="#sec-contribute-todo">TODO List</a>
			</li>
			
			<li>
				<h5>Architecture</h5>
				<a href="#sec-architecture-guid">Overview</a>
				<a href="#sec-architecture-guid">The Vert.x</a>
				<a href="#sec-architecture-dep">Dependencies Resolutions</a>
				<a href="#sec-architecture-tools">Tools & DevOps</a>
				<a href="#sec-architecture-dp">Design Patterns</a>
			</li>
		</ul>
	</div>
</section>

<section id="sec-gettingstarted">
	<div class="container">
		<header class="section-header">
			<h2>Get Started</h2>
			<p>Starting with 4Vert.x</p>
		</header>
	</div>
	
	<h4 id="sec-gettingstarted-dep">Dependencies</h4>

<p>For start the work, you need add the JSpare 4Vert.x dependency. Access <a href="/downloads">Download Area</a> for more information or options.</p>
		<h5>Maven</h5>
				<pre class="line-numbers"><code class="language-markup">
&lt;dependency&gt;
	&lt;groupId&gt;org.jspare&lt;/groupId&gt;
	&lt;artifactId&gt;jspare-4vertx-web&lt;/artifactId&gt;
	&lt;version&gt;1.0.0-RC1&lt;/version&gt;
&lt;/dependency&gt;
</code></pre>

	<h5>Gradle</h5>
					<pre class="line-numbers"><code class="language-markup">
sourceCompatibility = 1.8
targetCompatibility = 1.8

dependencies {
    compile "org.jspare:jspare-4vertx-web:1.0.0-RC1"
}
	</code></pre>
 <p>* Note : The current version is a RC1, then you may need to add in your settings.xml the reference of jcenter repository, follow the setup at: <a href="https://bintray.com/bintray/jcenter">https://bintray.com/bintray/jcenter</a>.</p>
 <p>** Note : Weekly will update the snapshots releases, you can follow this on our official repository at: <a href="https://bintray.com/jspare/maven">https://bintray.com/jspare/maven</a>.</p>

	<h4 id="sec-gettingstarted-project">Structuring a project</h4>

	<p>The entire structure and proposed hierarchy, has aimed to make you more productive and agreed application. For this the structural basis of the project is suggested in the following way:</p>

	<div class="file-tree">
      <ul>
        <li class="is-folder open">
          <span>org.jspare.samples</span>
          <i>Default package</i>
          <ul>
            <li class="is-folder open">
              <span>routes</span>
              <i>Package with routes</i>
              <ul>
                <li class="is-file">
                  <span>CarRoute.java</span>
                  <i>Sample route class</i>
                </li>
              	<li class="is-file">
              		<span>StartRoute.java</span>
              		<i>Sample route class</i>
            	 </li>
              </ul>
            </li>
            <li class="is-folder open">
              <span>model</span>
              <i>Package with models</i>
              <ul>
              	<li class="is-file">
              		<span>Car.java</span>
              		<i>Sample model</i>
            	</li>
              </ul>
            </li>
             <li class="is-folder open">
              <span>service</span>
              <i>Service package</i>
              <ul>
              	<li class="is-file">
              		<span>CarService.java</span>
              		<i>Interface Service</i>
            	</li>
            	<li class="is-file">
              		<span>CarServiceImpl.java</span>
              		<i>Impl for CarService interface</i>
            	</li>
              </ul>
            </li>
            <li class="is-file">
              <span>Bootstrap.java</span>
              <i>Bootstrap of project</i>
            </li>
          </ul>
        </li>

      </ul>
    </div>

    <p>In the next steps we will understand why each project structure be defined in this way, working with conventions helped in the maintenance, development and even transfer of functions.</p>
	
</section>

<section id="sec-core">
	<div class="container">
		<header class="section-header">
			<h2>JSpare Container</h2>
			<p>Understanding the core of our application</p>
		</header>
	</div>
	
	<h4 id="sec-core-boostrap">Bootstrap</h4>

	<p>The beginning of our application, ground zero. This is the purpose of life of Bootstrap. Be the starting point, one that dictates the behavior of our application. Through Bootstrap our application had taken life, let's start.</p>

	<pre class="line-numbers"><code class="language-java">
import org.jspare.core.container.Application;

public class Bootstrap extends Application {

	public static void main(String[] args) throws InfraException {

		//The boostrap will be started here
		new Bootstrap().start();
	}
}
</code></pre>
<p>You may think: Oh genius! You have a class that runs a static main. - Yes, is this. The Bootstrap nothing is who is responsible for initiating our main class, and for that, it has the following life cycle and that is where it is very important. Let's see:</p>

<ol>
	<li><b>Application.start()</b></li>
	<br>
	<p>When you call the method start in your Bootstrap, application will be started. On case, of override the start method, for init lifecycle it's importante call the <code>super.start();</code> for complete the lifecycle. The lifecycle follow the following flow: <b>initialize</b> -> <b>mySupport</b> (Prepare container injection) -> <b>buildAll</b> (Perform all builders)  -> <b>load</b>.</p>

	<li><b>Application.initialize()</b></li>
	<br>
	<p>This is when we have autonomy to dictate our container behavior, here we must establish the implementation of policies of our application, such as: Register components in the container, do the parameterization of common configurations, validate if everything is ok for the application start. In the container section, you will understand a little more about this method, but it is important now to understand that this is where things will happen. Later in this guide, we will go back and understand best is section.</p>

	<pre class="line-numbers"><code class="language-java">
@Override
protected void initialize() {

	// The lifecycle start here.
	// Initialize your component and determine the behavior of your
	// ENVIRONMENT. On this stage is the ideal time to configure the
	// container and the environment configs.
	
	Environment.registryComponent(MyInterfaceImpl.class);
	Environment.CONFIG.put("sample.propertie.key", "sample_value");
}
</code></pre>

//todo xxxx build method

	<li><b>Application.load()</b></li>
	<br>
	<p>Our container it's already and our Bootstrap already loaded, and now? Now, is time to make our application run, at this moment we have the directives to start our job or service.</p>

	<pre class="line-numbers"><code class="language-java">
@Inject
private VertxManager manager;

@Override
protected void load() {

	// Its components have not been initialized in the container, you can
	// now load and determine the behavior of your APPLICATION.
	
	VertxTransporter transporter = manager.create(VertxBuilder.create(this));
	transporter.httpServer().listen(8080);
}
</code></pre>

<p>Remembering our first code of this section, now, for start our application we need only create new instancy of Bootstrap and start: <code>new Boostrap().start();</code></p>

</ol>
	
	<h4 id="sec-core-env">Environment</h4>
	<h4 id="sec-core-conf">Configuration</h4>
	<h4 id="sec-core-my">Components & Injection</h4>
	<h4 id="sec-core-appcon">Application Context</h4>
	
</section>

<section id="sec-server">
	<div class="container">
		<header class="section-header">
			<h2>4Vert.x</h2>
			<p>Improving your Vert.x experience</p>
		</header>
	</div>
	
	<h4 id="sec-server-builders">Builders</h4>
	<h4 id="sec-server-routes">Routes</h4>
	<h4 id="sec-server-controller">Route & Handlers</h4>
	<h4 id="sec-server-mapping">Mapping</h4>
	<h4 id="sec-server-handling">Handling</h4>
	<h4 id="sec-server-reqres">Request & Response</h4>
	<h4 id="sec-server-model">Model</h4>
	<h4 id="sec-server-filt">Middlewares</h4>
	
</section>

<section id="sec-contribute">
	<div class="container">
		<header class="section-header">
			<h2>Contribute</h2>
			<p>The JSpare more powerfull</p>
		</header>
	</div>
	
	<h4 id="sec-contribute-issues">Issues / Bugs</h4>
	<h4 id="sec-contribute-blog">Development Blog</h4>
	<h4 id="sec-contribute-changelog">Changelog</h4>
	<h4 id="sec-contribute-todo">TODO List</h4>
	
</section>

<section id="sec-architecture">
	<div class="container">
		<header class="section-header">
			<h2>Architecture</h2>
			<p>Behind of framework</p>
		</header>
	</div>
	
	<h4 id="sec-architecture-guid">Overview</h4>
	<h4 id="sec-architecture-guid">The Vert.x</h4>
	<h4 id="sec-architecture-dep">Dependencies Resolutions</h4>
	<h4 id="sec-architecture-tools">Tools & DevOps</h4>
	<h4 id="sec-architecture-dp">Design Patterns</h4>
	
</section>