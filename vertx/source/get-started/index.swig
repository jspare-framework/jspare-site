---
id: get-started
title: Get Started
nav_title: Get Started
nav_message: Starting with 4Vert.x
date: 2016-07-21 13:40:50
---


<section>
	<div class="container">
		<header class="section-header">
			<h2>First steps</h2>
			<p>Starting with JSpare Vert.x</p>
		</header>
		
		<h4 id="sec-gettingstarted-dep">Dependencies</h4>
		<p>Follow the required dependencies for start with JSpare Vert.x</p>
		<h5>Maven</h5>
				<pre class="line-numbers"><code class="language-markup">
&lt;dependency&gt;
	&lt;groupId&gt;org.jspare.vertx&lt;/groupId&gt;
	&lt;artifactId&gt;jspare-vertx&lt;/artifactId&gt;
	&lt;version&gt;1.0.0-SNAPSHOT&lt;/version&gt;
&lt;/dependency&gt;

&lt;dependency&gt;
  &lt;groupId&gt;org.jspare.vertx&lt;/groupId&gt;
  &lt;artifactId&gt;jspare-vertx-web&lt;/artifactId&gt;
  &lt;version&gt;1.0.0-SNAPSHOT&lt;/version&gt;
&lt;/dependency&gt;

</code></pre>

	<h5>Gradle</h5>
					<pre class="line-numbers"><code class="language-markup">
sourceCompatibility = 1.8
targetCompatibility = 1.8

dependencies {
    compile "org.jspare.vertx:jspare-vertx:1.0.0-SNAPSHOT"
    compile "org.jspare.vertx:jspare-vertx-web:1.0.0-SNAPSHOT"
}
	</code></pre>
	
	<h4 id="sec-gettingstarted-project">Structuring a project</h4>
	<p>Example basics of how should be the default structure of your project, later on we will deal with all the conventions.</p>
	
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
            
           <h4>Bootstrap, starting one application</h4>
			<p>Bootstrap is the starting point of your application, through it you will set the standards and behaviors. Access the references for more information.</p>
			<pre class="line-numbers"><code class="language-java">
import org.jspare.core.container.Application;
import org.jspare.core.container.Inject;
import org.jspare.core.exception.InfraException;
import org.jspare.forvertx.web.transport.VertxBuilder;
import org.jspare.forvertx.web.transport.VertxManager;
import org.jspare.forvertx.web.transport.VertxTransporter;

public class Bootstrap extends Application {
	
	@Inject
	private VertxManager manager;

	@Override
	protected void load() {
		
		VertxTransporter transporter = manager.create(VertxBuilder.create(this));
		transporter.httpServer().listen(8080);
	}

	public static void main(String[] args) throws InfraException {

		//The boostrap will be started here
		new Bootstrap().start();
	}
}
</code>
				</pre>
		<h4>Routes, and hello handlers!</h4>
		<p>Write your Web applications with ease and simplicity, the 4Vert.x was designed to be simple, see the references for more details Framework.</p>
		<pre class="line-numbers"><code class="language-java">
import org.jspare.forvertx.web.handling.Handling;
import org.jspare.forvertx.web.mapping.handlers.Handler;
import org.jspare.forvertx.web.mapping.method.Get;

public class StartRoute extends Handling {
	
	@Handler
	@Get("/start")
	public void route1() {
		
		success("Starting with JSpare 4Vert.x")
	}
}
</code>
				</pre>	
</div>


</section>