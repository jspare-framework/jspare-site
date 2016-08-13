<div class="container">
  <div class="row">

    <div class="col-md-5 col-sm-12 col-xs-12">
      <ul class="footer-links">
        <li><a href="{{ url_for('site/home') }}">{{ __('home') }}</a></li>
        <li><a href="{{ url_for('site/projects') }}">{{ __('projects') }}</a></li>
        <li><a href="{{ url_for('site/contribute') }}">{{ __('contribute') }}</a></li>
        <li><a href="{{ url_for('site/contact') }}">{{ __('contact') }}</a></li>
        <li><a href="{{ url_for('site/terms') }}">{{ __('terms') }}</a></li>
      </ul>
    </div>

    <div class="col-md-5 col-sm-12 col-xs-12">
      <ul class="footer-language">        
        <li><a class="changeLanguage"  href="#" id="en_US"><img src="{{ url_for('images/flagUS.png') }}" /></a></li>
        <li><a class="" id="pt_BR"><img style="opacity: 0.2; filter: alpha(opacity=20);"  src="{{ url_for('images/flagBrazil.png') }}" /></a></li>
        <li><a class="" id="es_ES"><img style="opacity: 0.2; filter: alpha(opacity=20);" src="{{ url_for('images/flagES.png') }}" /></a></li> 
      </ul>
    </div>

    <div class="col-md-2 col-sm-12 col-xs-12">
      <ul class="footer-socials">
        <li><a title="" href="{{ theme.social.Facebook }}" rel="external"><span class="fa fa-facebook"></span></a></li>
        <li><a title="" href="{{ theme.social.Twitter }}" rel="external"><span class="fa fa-twitter"></span></a></li>
        <li><a title="" href="{{ theme.social.GitHub }}" rel="external"><span  class="fa fa-github"></span></a></li>
        <li><a title="" href="{{ theme.social.Linkedin }}" rel="external"><span class="fa fa-linkedin"></span></a></li>
      </ul>
    </div>

  </div>

  <div class="row">
    <div class="col-md-8 col-sm-6 col-xs-12">
      <p class="copyright-text">
        {{ __('copyright') }}&nbsp;<a href="http://jspare.org">{{ __('jspareOrg') }}</a>.
      </p>
    </div>

    <div class="col-md-4 col-sm-6 col-xs-12">
      <p class="back-to-top">
        <a id="scroll-up" href="#">{{ __('toTop') }}</a>
      </p>
    </div>
  </div>

</div>