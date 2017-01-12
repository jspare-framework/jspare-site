---
id: get-started
title: Get Started
nav_title: Get Started
nav_message: Starting with the JSpare Framework
date: 2016-07-21 13:40:50
---


<section>
	<div class="container">
		<header class="section-header">
			<h2>First steps</h2>
			<p>Starting with JSpare Core Container</p>
		</header>
		
		<h4 id="sec-gettingstarted-dep">Dependencies</h4>
		<p>Follow the required dependencies for start with JSpare Core Container</p>
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

  <p>For Android support use <code>jspare-core-android-support</code> as artifactId.</p>
	
	<h4 id="sec-gettingstarted-project">Structuring a project</h4>
	<p>Example basics of how should be the default structure of your project, later on we will deal with all the conventions.</p>
	
	 <div class="file-tree">
              <ul>
                <li class="is-folder open">
                  <span>org.jspare.samples</span>
                  <i>Default package</i>
                  <ul>
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
                      <span>api</span>
                      <i>API sample package</i>
                      <ul>
                      	<li class="is-file">
                      		<span>CarApi.java</span>
                      		<i>Interfaces of APIs</i>
                    	</li>
                    	<li class="is-file">
                      		<span>CarApiImpl.java</span>
                      		<i>Impl for CarApi interface</i>
                    	</li>
                      </ul>
                    </li>
                    <li class="is-folder open">
                      <span>application</span>
                      <i>The application impls</i>
                      <ul>
                        <li class="is-file">
                          <span>Consumer.java</span>
                          <i>Class responsible for consume apis</i>
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
            
		<h4>Modularized your applications!</h4>
		<p>Write your applications using container, surely your application will get more organized and you were unpacking things.</p>
		<pre class="line-numbers"><code class="language-java">
package org.jspare.samples.api;

import java.util.List;

import org.jspare.core.annotation.Component;
import org.jspare.samples.model.Car;

@Component
public interface CarApi {

  List<Car> search();
}
</code>
				</pre>	
      <h4>Follow the convetions, it will help you!</h4>
    <p>The JSpare Core Container, have some conventions for help with your codding. Below you will see a convention for standard implementation of a component.</p>
    <pre class="line-numbers"><code class="language-java">

package org.jspare.samples.model;

public class Car {

  private String name;
  
  private int year;
  
  public Car(String name, int year) {
    super();
    this.name = name;
    this.year = year;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public int getYear() {
    return year;
  }

  public void setYear(int year) {
    this.year = year;
  }
  
  public void print(){
    
    System.out.println(toString());
  }

  @Override
  public String toString() {
    return "Car [name=" + name + ", year=" + year + "]";
  }
}

package org.jspare.samples.api;

import java.util.Arrays;
import java.util.List;

import org.jspare.samples.model.Car;

public class CarApiImpl implements CarApi {

  @Override
  public List<Car> search() {

    return Arrays.asList(new Car("BMW 3 Series", 2017), new Car("Lexus RX 350", 2016));
  }
}

package org.jspare.samples.application;

import org.jspare.core.annotation.Inject;
import org.jspare.core.annotation.Resource;
import org.jspare.samples.api.CarApi;
import org.jspare.samples.model.Car;

@Resource
public class Consumer {

  @Inject
  private CarApi carApi;
  
  public void giveMeAllCars(){
    
    carApi.search().forEach(Car::print);
  }
}

</code>
        </pre>  


 <h4>Bootstraping, its time to start your java application</h4>
      <p>Bootstrap is the starting point of your application, through it you will set the standards and behaviors. Access the references for more information.</p>
      <pre class="line-numbers"><code class="language-java">
package org.jspare.samples;

import static org.jspare.core.container.Environment.my;

import org.jspare.core.container.Application;
import org.jspare.samples.application.Consumer;

public class Boostrap extends Application {

  public static void main(String[] args) {

    Application.run(Boostrap.class);
  }
  
  @Override
  protected void start() {

    my(Consumer.class).giveMeAllCars();
  }
}
</code>
        </pre>

<h4>Dont't worry!</h4>
<p>Please refer to the documentation to better understand the conventions. <a href="/docs">See more</a></p>
<p>The above code are available <a href="https://github.com/jspare-projects/jspare-samples">here</a> on Github.
</div>
</section>