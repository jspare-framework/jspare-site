---
id: docs
title: Docs
nav_title: Documentation
nav_message: Guideline for start with JSpare Core Container
date: 2016-07-21 13:40:50
---

<!-- Navigation -->
<nav class="page-navigation full-topbar">
	<ul class="nav">
		<li><a href="#sec-gettingstarted">Get Started</a></li>
		<li><a href="#sec-core">JSpare Container</a></li>
		<li><a href="#sec-contribute">Contribute</a></li>
		<li><a href="#sec-others">Others</a></li>
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
				<a href="#sec-core-env">Environment Overview</a>
				<a href="#sec-core-boostrap">Bootstrap</a>
				<a href="#sec-core-conf">Configuration</a>
				<a href="#sec-core-container">Container</a>				
				<a href="#sec-core-components">Components & Resources</a>
				<a href="#sec-core-injection">Injections & Injectors</a>					
			</li>
			
			<li>
				<h5>Contribute</h5>
				<a href="#sec-contribute-issues">Issues / Bugs</a>
				<a href="#sec-contribute-changelog">Changelog</a>
			</li>
			
			<li>
				<h5>Others</h5>
				<a href="#sec-others-architecture">Architecture</a>				
				<a href="#sec-others-dep">Dependencies Resolutions</a>
				<a href="#sec-others-dep">Other references</a>
			</li>
		</ul>
	</div>
</section>

<section id="sec-gettingstarted">
	<div class="container">
		<header class="section-header">
			<h2>Get Started</h2>
			<p>Starting with JSpare Framework</p>
		</header>
		

		<p>The first thing you always ask yourself is how to start using a framework, you'll see that with Jspare there's nothing out of this world, let's start with dependencies ...</p>

		<h4 id="sec-gettingstarted-dep">Dependencies</h4>
		<p>Follow the required dependencies for start with JSpare Framework</p>
		<h5>Maven</h5>
		<pre class="line-numbers"><code class="language-markup">
			&lt;dependency&gt;
			&lt;groupId&gt;org.jspare&lt;/groupId&gt;
			&lt;artifactId&gt;jspare-core&lt;/artifactId&gt;
			&lt;version&gt;2.0.0&lt;/version&gt;
			&lt;/dependency&gt;
		</code></pre>

		<h5>Gradle</h5>
		<pre class="line-numbers"><code class="language-markup">
			dependencies {
			compile "org.jspare:jspare-core:2.0.0"
		}
	</code></pre>

	<p>Incredible, you added our dependency and now where we can start, following this document we will try to be logical and consistent with the explanations, let's understand how the ship works and then fly ok?</p>
	<br>

</section>

<section id="sec-core">
	<div class="container">
		<header class="section-header">
			<h2>JSpare Container</h2>
			<p>Understanding the core of our application</p>
		</header>
	</div>

	
	<h4 id="sec-core-env">Environment Overview</h4>

	<p>Well, if you are here it is because you want to understand a bit more how the Jspare Framework works. The Container, is the core of our framework and it is responsible for most of the framework engine. Okay, but let's start at the beginning. What is the framework for? Let's understand ...</p>

	<p>The main function of JSpare Framework is to provide a simple, intuitive and powerful container for your java applications. This is the essence and with it we gain some more characteristics. Our container is responsible for providing and managing the instance of components and resources used in our applications, when we deal with this issue we are talking about dependency injection, control inversion and the usage of some design patterns that are issues very important for the construction of one software. We cherish user-friendliness and increasingly make the framework simple to use on a day-to-day basis, remove the many configurations, apply conventions, and thus create a culture of thinking a little bit more when it comes to building software. Such as: Component reuse, clean code, and development complexity reduction.</p>

	<p>But let's talk about what matters, the Framework. Our application is based on the concept of standalone applications, in the end we will have a single artifact with all the necessary dependencies and libraries packaged in a fat-jar. I promise in the next topics to put a little more in practice to understand and have reference of how things work ...</p>

	<br>
	<h4 id="sec-core-boostrap">Bootstrap</h4>

	<p>We say that our application is based on the concept of an standalone application. And all this starts from the beginning. So obvious ... We're talking about Bootstrap. </p>

	<p>Bootstrap is the point that defines the beginning of our application, we speak of a class with a main method that is executed to start a program in java. Cool, but what's so different? And now let's get to work ...</p>

	<p>The following code snippet refers to an initialization class implemented with the Jspare Framework. (From here we will always try to make clear our codes, we will put the import packages and reference the contents)</p>

	 <pre class="line-numbers"><code class="language-java">
package org.jspare.samples;

import org.jspare.core.container.Application;

public class Boostrap extends Application {

  public static void main(String[] args) {

    Application.run(Boostrap.class);
  }
  
  @Override
  protected void start() {

  	... Execute something here ...
  }
}
</code>
        </pre>

	<br>
	<h4 id="sec-core-conf">Configuration</h4>
	<br>
	<h4 id="sec-core-container">Container</h4>
	<br>
	<h4 id="sec-core-components">Components & Resources</h4>
	<br>
	<h4 id="sec-core-injection">Injections & Injectors</h4>
	
</div>
</section>

<section id="sec-contribute">
	<div class="container">
		<header class="section-header">
			<h2>Contribute</h2>
			<p>The JSpare more powerfull</p>
		</header>
		
		
		<h4 id="sec-contribute-issues">Issues / Bugs</h4>
		<p>You can report any issue or bug, just go to our github and register a new task, make sure our team and above all the community will help you. For our growth it is fundamental that we are always united with the whole community.</p>

		<p>Please register your issue at: <a href="https://github.com/jspare-projects/jspare-container/issues">GitHub / Issues</a> 
			<br>
			<h4 id="sec-contribute-changelog">Changelog</h4>

			<p>Access the <a href="/docs">Changelog Page</a> and track all of our backlog and predictions of new features and fixes.</p>
		</div>
	</section>

	<section id="sec-others">
		<div class="container">
			<header class="section-header">
				<h2>Others</h2>
				<p>Behind of framework</p>
			</header>
			
			
			<h4 id="sec-others-architecture">Architecture</h4>

			<p>We are writing an article with all the detail behind development. Sign up and do not miss updates.</p>
			<br>
			<h4 id="sec-others-dep">Dependencies Resolutions</h4>

			<p>Our entire project was thought to be the purest and simplest solution in terms of container and control inversion.</p>

			<p>We have a short list of dependencies that are part of our development, know a bit more because we use some of these technologies.</p>

			<h4 id="sec-others-ref">Other references</h4>

			<p>In this section we will bring some other references of projects that use or are based on the jspare framework.</p>

		</div>
	</section>