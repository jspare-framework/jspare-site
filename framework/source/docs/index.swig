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
				<a href="#sec-core-container">Container</a>				
				<a href="#sec-core-components">Components & Resources</a>
				<a href="#sec-core-injection">Injections & Injectors</a>					
				<a href="#sec-core-conf">Configuration</a>
				<a href="#sec-core-boostrap">Bootstrap</a>
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

  <p>Note: For Android support use <code>jspare-core-android-support</code> as artifactId.</p>

	<p>Incredible, you added our dependency and now where we can start, following this document we will try to be logical and consistent with the explanations, let's understand how the ship works and then fly ok?</p>
	

</section>

<section id="sec-core">
	<div class="container">
		<header class="section-header">
			<h2>JSpare Container</h2>
			<p>Understanding the core of our application</p>
		</header>
	</div>

	<br>
	<h4 id="sec-core-env">Environment Overview</h4>

	<p>Well, if you are here it is because you want to understand a bit more how the Jspare Framework works. The Container, is the core of our framework and it is responsible for most of the framework engine. Okay, but let's start at the beginning. What is the framework for? Let's understand ...</p>

	<p>The main function of JSpare Framework is to provide a simple, intuitive and powerful container for your java applications. This is the essence and with it we gain some more characteristics. Our container is responsible for providing and managing the instance of components and resources used in our applications, when we deal with this issue we are talking about dependency injection, control inversion and the usage of some design patterns that are issues very important for the construction of one software. We cherish user-friendliness and increasingly make the framework simple to use on a day-to-day basis, remove the many configurations, apply conventions, and thus create a culture of thinking a little bit more when it comes to building software. Such as: Component reuse, clean code, and development complexity reduction.</p>

	<p>But let's talk about what matters, the Framework. Our application is based on the concept of standalone applications, in the end we will have a single artifact with all the necessary dependencies and libraries packaged in a fat-jar. I promise in the next topics to put a little more in practice to understand and have reference of how things work ...</p>

	
	<br>
	<h4 id="sec-core-container">Container</h4>
	
	<p>The core of JSpare Framework, the Container. This is where everything happens and is a more important part of the framework. The container is responsible for controlling the resources, components and everything that is being delegated to the infrastructure of the framework. In practice, when we want to access an implementation we will request for the container, directly or indirectly. The same will happen when we are providing a resource to be shared in the container. And it is in the <code>Environment</code> that this happen, the Environment exposes methods for safe handling of resources, as the methods: <code>registryComponent</code>, <code>registryResource</code>, <code>my</code> and others to do this.</p>

	<pre class="line-numbers"><code class="language-java">

import static org.jspare.container.Environment.my;
import static org.jspare.container.Environment.registryResource;
import static org.jspare.container.Environment.registryComponent;

registryComponent(new SomeInterfaceImpl());
registryResource(new SomeResource());

my(SomeInterface.class).doSomething(); 

T result = my(SomeResource.class).doAnother();

</code></pre>

	<p>To understand how all this works, let's look at the topic introduction about features and components and the use of Environment for manipulation.</p>

	<p>Note, the container itself does not have the feature of clustering its resources, for this must use a specific library like Hazelcast or the one of its preference, we intend to approach this subject ahead, thinking about integrations and componentization using OSGi.</p>

	<br>
	<h4 id="sec-core-components">Components & Resources</h4>
	
	<p>Things do not happen if we do not have the stereotypes to manipulate resources and components. For different purposes two of these are available, <code>@Component</code> and <code>@Resource</code>. Both annotations should be used in classes and they define the characteristics that their implementations will have in the application.</p>

	<h5>Component</h5>
	
	<p>Modularizing is critical to a cohesive and decoupled implementation. The <code>@Component</code> it does just that. Writing an interface and noting with the component stereotype is giving character and life to your interface.</p>

		<pre class="line-numbers"><code class="language-java">
@Component
public interface AccountService {

	List<Account> list();

	Optional<Account> findById(int id);

	void save(Account account);
}
</code></pre>

<p>We have the definition of an interface annotated by <code>@Component</code>. When you try to access the interface with Environemnt using the <code>my</code> static method or <code>@Inject</code> for one handling class the container will understand to look for a registered implementation and will resolve your declaration. Nice, but how will the container look for an implementation?</p>

		<pre class="line-numbers"><code class="language-java">
public class AccountServiceImpl implements AccountService {

	@Override
	public List<Account> list(){
		return Arrays.asList(new Account('admin'));
	}

	@Override
	public Optional<Account> findById(int id){
		return Optional.of(new Account('u' + id))
	}

	@Override
	public void save(Account account){
		// ... save
	}
}
</code></pre>
<p>If the interface implementation is standard, you do not need to directly register the implementation in the container, it is enough that the implementation package structure follows the same interface as: <code>foo.service.*</code> and the class nomenclature that implements use the suffix <code>[InterfaceClassName]Impl</code>. Thus:</p>

		<pre><code class="language-java">
foo.service.AccountService
foo.service.AccountServiceImpl
</code></pre>

<p>With this, the container will understand that the default implementation that should be used is that found by the convention. But, and in case of having my implementation in another package or following another pattern of nomenclature and structure?

<pre class="line-numbers"><code class="language-java">
public class AccountServiceOtherImpl implements AccountService {

	@Override
	public List<Account> list(){
		return Arrays.asList(new Account('other-admin'));
	}

	@Override
	public Optional<Account> findById(int id){
		return Optional.empty();
	}

	@Override
	public void save(Account account){
		// ... save
	}
}
</code></pre>

<p>Of face the container will not understand that this its class is the implementation that represents this component. So it is necessary to record this implementation in the environment.</p>

<pre class="line-numbers"><code class="language-java">

import static org.jspare.container.Environment.registryComponent;

void foo(){
	
	registryComponent(new AccountServiceOtherImpl());

	// or

	registryComponent(AccountServiceOtherImpl.class);

	// So make sure there is a parameterless constructor so that it is instantiated correctly. Otherwise he would have received an exception.
	
}
</code></pre>

<p>Being available to the Environment, the component can already be accessed.</p>

<pre class="line-numbers"><code class="language-java">

import static org.jspare.container.Environment.my;

void consumer(){
	
	AccountService service = my(AccountService.class);
	service.save(new Account("..."));
	List<Account> accounts = service.list();

	// or direct access

	Optional<Account> oAccount = my(AccountService.class).findById(1);
	my(AccountService.class).save(new Account("..."));
}
</code></pre>

<p>We are no longer concerned with what the implementation is calling, either because we are using the standard or a registered implementation. But in case I need more than one implementation registered in my application? Qualifiers!</p>

	<h5>Qualifiers</h5>
	

	<p>In case we need to have more than one registered implementation we can use the qualifiers, they server so the container distinguishes more than one implementation. Throught annotation <code>@Qualify</code> we're going to tell you what the implementation we're using is for the container.</p>

	<pre class="line-numbers"><code class="language-java">
@Qualify(˜DefaultImpl˜)
public class AccountServiceImpl implements AccountService {

	@Override
	public List<Account> list(){
		return Arrays.asList(new Account('admin'));
	}

	@Override
	public Optional<Account> findById(int id){
		return Optional.of(new Account('u' + id))
	}

	@Override
	public void save(Account account){
		// ... save
	}
}

// or 

@Qualify("CustomImpl")
public class AccountServiceOtherImpl implements AccountService {

	@Override
	public List<Account> list(){
		return Arrays.asList(new Account('other-admin'));
	}

	@Override
	public Optional<Account> findById(int id){
		return Optional.empty();
	}

	@Override
	public void save(Account account){
		// ... save
	}
s}
</code></pre>

<p>In the above codes we are using two qualifications to perform the manipulation of the defined interface. In order to use it we need to ensure that the reading and access to the environment is informed the qualifier </p>

<pre class="line-numbers"><code class="language-java">

import static org.jspare.container.Environment.my;

// for registereds classes

@Inject
private AccountServce service;

// inline call

void consumer(){
	
	
	List<Account> accounts = my(AccountService.class, ˜DefaultImpl˜).list(); // Default first list

	
	List<Account> accounts = my(AccountService.class, "Customl").list(); // Custom list

}
</code></pre>

<p>Every request for the container is executed on demand. Either the design of a component is very important for the application to remain lightweight and scalable.</p>

	

	<h5>Resource</h5>
	

	<p>Similar to the component a resource is also registered and manipulated by the Enviromente, however a resource does not have to be defined by an interface, a resource is direct access to a system functionality and should be used when there is no perspective of decoupling.</p>

	<pre class="line-numbers"><code class="language-java">
@Resource
public class SimpleApi  {

	public void foo(){
		// ... do something
	}
}
</code></pre>

<p>A resource is automatically registered in the container and loaded by demand as well as the components, other than a component a resource does not follow a nomenclature for load, only a standard so that it can be instantiated, that is, for a resource to be correctly loaded, Have a public constructor and no parameters.</p>

<pre class="line-numbers"><code class="language-java">

import static org.jspare.container.Environment.my;

// for registereds classes

@Inject
private SimpleApi api;

// inline call

void consumer(){
	
	
	api.foo();

	// or

	my(SimpleApi.class).foo();

}
</code></pre>

<p>For the case of resources instantiated manually, access the environment and call the registryResource method passing the instance.</p>

	<pre class="line-numbers"><code class="language-java">
@Resource
public class SimpleApi  {

	private String name;

	public SimpleApi(String name){
		this.name = name;
	}

	public void getName(){
		return this.name;
	}
}

// for registry

void setup(){
	
	registryResource(new SimpleApi("jspare"));
}

</code></pre>

<h5>Auxiliar</h5>


<p>The life cycle of a component happens as follows when the environment requests that an instance be returned and in case it has not yet been lifted the following steps are performed.</p>

<ul>
	<li>Create new component instance</li>
	<li>Resolve dependencies, with injection</li>
	<li>Call auxiliar method annotated by <code>@After</code></li>
	<li>Returns component reference.</li>
</ul>

<h6>Create new component instance</h6>

<p>The public constructor call is executed without parameters for standard deployments, or the registered instance is retrieved.</p>

<h6>Resolve dependencies, with injection</h6>
<p>Internally the helper component is called <code>ContainerUtils.processInjection</code> with the instance, resolving all dependencies.</p>

<h6>After calls</h6>
<p>In order to aid in the life cycle a trigger has been introduced to p [the instantiation of a resource or component. After an instance is generated, if there is a method with the @After annotation this will be called and executed.</p>

<pre class="line-numbers"><code class="language-java">
@Resource
public class Foo  {

	private String name;

	public SimpleApi(){
		
	}

	@After
	private void setup(){

		this.name = UUID.randomUUID().toString();
	}

	public void getName(){
		return this.name;
	}
}
</code></pre>

<p>In this example, when the resource was created the after method will generate a random uuid for the field name.</p>

<h6>Returns component reference.</h6>
<p>It is returned to the requested instance being casted using Java Generic, leaving its apis fluent and usual.</p>


<p><b>Important: To access a resource or component by the environment, the classes that will be retrieved must have annotated the stereotypes: <code>@Component</code> or <code>@Resource</code>. Otherwise, the container will refuse.</b></p>

	
	<br>
	<h4 id="sec-core-injection">Injections & Injectors</h4>
	

	<p>When a class is processed by Environment, processing of an instance is performed. This processing is part of the life cycle of a component or resource. And it is essential for the inversion of control and injection of dependencies.</p>

	<pre class="line-numbers"><code class="language-java">
@Resource
public class Consumer  {

	@Inject
	private AccountService service;

	@Inject
	private FooResource foo;

	public void doSomething(){
		
		service.list().forEach(foo::doIt);
	}
}
</code></pre>

<p>Through these annotations processing is performed the resource is requested for the environment and its components and features are available. Okay, but for those cases where I'm not in the life-cycle flow for injection, how do I do it?</p>

<p>To perform the processing of your class outside the lifecycle it is necessary to call manually so that it is processed. For this there are two ways: the call of an auxiliary method to perform the processing or extend its class of the abstract <code>MySupport<code>.</p>

	<pre class="line-numbers"><code class="language-java">
import org.jspare.core.container.MySupport;

public class Client extends MySupport {

	@Inject
	private AccountService service;

	@Inject
	private FooResource foo;

	public void doSomething(){
		
		service.list().forEach(foo::doIt);
	}
}
</code></pre>

<p>When extending this way, your class is within the life cycle, but if it is not possible to extend through your class already being inherited from another parent, you can add a trigger for processing, e.g:</p>

	<pre class="line-numbers"><code class="language-java">
import org.jspare.core.container.MySupport;

public class Client extends Another {

	public Client(){

		ContainerUtils.processInjection(this);
	}

	@Inject
	private AccountService service;

	@Inject
	private FooResource foo;

	public void doSomething(){
		
		service.list().forEach(foo::doIt);
	}
}
</code></pre>

<p>The process injection method will process the requested instance and resolve the required dependencies.</p>

<p>An excellent example is using an android application (you need to be using the <code>jspare-core-androi-support</code> module in this case) to process and inject your services, components and resources when creating the instance of an Activity you can call the <code>processInjection</code>.</p>

<pre class="line-numbers"><code class="language-java">
import static org.jspare.core.container.ContainerUtils.processInjection;

public final class MultiTrackerActivity extends AppCompatActivity {

	@Inject
	private AccountService accountService;

	/**
     * Initializes the UI and creates the detector pipeline.
     */
    @Override
    public void onCreate(Bundle icicle) {
        super.onCreate(icicle);
        setContentView(R.layout.main);

        processInjection(this);
    }

}
</code></pre>

	<h4 id="sec-core-conf">Configuration</h4>
	
	<p>When we talk about integration or we are proposed to develop an application, we have a task always on our side. The configuration. But what do we need to configure application for? I'm going to answer that one, we usually indicate how the parameterization of our environment, such as: variables, libraries and references. And that's key to keeping our application ready for environment migration or anything.</p>
	<p>The JSpare Framework offers a simple way to solve and manipulate your settings, we outsource through component <code>CommonsConfig</code> that extends <code>Configuration</code> from Apache Commons project and externalize this through a component that can be injected through inversion control injection into your application. </p>

	<br>
	<h4 id="sec-core-boostrap">Bootstrap</h4>

	<p>We say that our application is based on the concept of an standalone application. And all this starts from the beginning. So obvious ... We're talking about Bootstrap. </p>

	<p>Bootstrap is the point that defines the beginning of our application, we speak of a class with a main method that is executed to start a program in java. Cool, but what's so different? And now let's get to work ...</p>

	<p>The following code snippet refers to traditional initialization class implemented with the Jspare Framework. (From here we will always try to make clear our codes, we will put the import packages and reference the contents)</p>

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

     <p>The example will trigger your application if it has structured as an application stando alone and its end result is a fat-jar. But note that this is not a rule, there are other ways to start the container, let's address later. But speaking the real, it will depend a lot on your application or other technology you are using. To finish the reasoning, we are easy to integrate with your project.</p>

</div>
</section>

<section id="sec-contribute">
	<div class="container">
		<header class="section-header">
			<h2>Contribute</h2>
			<p>The JSpare more powerfull</p>
		</header>
		
		<br>
		<h4 id="sec-contribute-issues">Issues / Bugs</h4>
		<p>You can report any issue or bug, just go to our github and register a new task, make sure our team and above all the community will help you. For our growth it is fundamental that we are always united with the whole community.</p>

		<p>Please register your issue at: <a href="https://github.com/jspare-projects/jspare-container/issues">GitHub / Issues</a> 
			
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
			
			<br>
			<h4 id="sec-others-architecture">Architecture</h4>

			<p>We are writing an article with all the detail behind development. Sign up and do not miss updates.</p>
			
			<br>
			<h4 id="sec-others-dep">Dependencies Resolutions</h4>

			<p>Our entire project was thought to be the purest and simplest solution in terms of container and control inversion.</p>

			<p>We have a short list of dependencies that are part of our development, know a bit more because we use some of these technologies.</p>

			<br>
			<h4 id="sec-others-ref">Other references</h4>

			<p>In this section we will bring some other references of projects that use or are based on the jspare framework.</p>

		</div>
	</section>