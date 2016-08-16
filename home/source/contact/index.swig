---
id: contact
title: Contact
nav_title: Get In Touch With Us
nav_message: Say Hello! Don’t Be Shy.
date: 2016-07-21 13:40:50
---

<!-- Navigation -->
<nav class="page-navigation full-topbar">
	<ul class="nav">
		<li><a href="#sec-header">Contact</a></li>
		<li><a href="#sec-social">Social Network</a></li>
	</ul>
</nav>
<!-- END Navigation -->
<section id="sec-header">
	<div class="container">
		<header class="section-header">
			
			<h2>Talk with us</h2>
			<p>Fill the form or send a mail to jspare@jspare.org</p>
		</header>
		<h3>Contact Us</h3>		
		<form id="form-contact">
			<div class="row">
				<div class="form-group col-sm-12 col-md-6">
					<input name="name" type="text" class="form-control" placeholder="Your name">
				</div>
				<div class="form-group col-sm-12 col-md-6">
					<input name="email" type="email" class="form-control" placeholder="Yourm mail">
				</div>
			</div>
			<div class="form-group">
				<textarea name="message" class="form-control" rows="5" placeholder="Your message"></textarea>
			</div>
			<button type="submit" class="btn btn-primary">Send</button>
		</form>
	</div>
</section>
<section id="sec-social" class="no-border-bottom bg-img-purchase bg-repeat text-center">
	<div class="container">
		<header class="section-header">
			<span>Connect</span>
			<h2>Social Network</h2>
			<p>Visit our social networks, and closely monitor our day to day information, polls, tutorials and more.</p>
		</header>
		<div align="center">
			<ul class="color-palette-circular">
				<li class="bg-blue-dark"><a href="https://www.facebook.com/jspare.framework"><i
						class="fa fa-facebook fa-5x" style="vertical-align: middle;"></i></a></li>
				<li class="bg-dark"><a href="https://github.com/jspare-projects"><i class="fa fa-github fa-5x"
						style="vertical-align: middle;"></i></a></li>
				<li class="bg-blue"><a href="https://twitter.com/jspareframework"><i class="fa fa-twitter fa-5x"
						style="vertical-align: middle;"></i></a></li>
				<li class="bg-dark"><a href="https://www.linkedin.com/groups/8491859"><i class="fa fa-linkedin fa-5x"
						style="vertical-align: middle;"></i></a></li>
			</ul>
		</div>
	</div>
</section>
<div class="modal fade" id="modal-message" tabindex="-1" role="dialog" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">Message</h4>
			</div>
			<div class="modal-body">
				<span id="message-result"></span>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
</div>

<script src="https://sdk.amazonaws.com/js/aws-sdk-2.3.16.min.js"></script>
<script src="/js/contact.js"></script>
