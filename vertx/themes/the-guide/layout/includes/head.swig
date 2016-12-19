{% set pageTitle = page.title || config.subtitle || '' %}
{% if is_archive() %}
  {% set pageTitle = _p('archive_title') %}
{% endif %}
{% if is_tag() %}
  {% set pageTitle = __('tag_title') + ': ' + page.tag %}
{% endif %}
{% if is_category() %}
  {% set pageTitle = __('category_title') + ': ' + page.category %}
{% endif %}
{% if is_month() %}
  {% set pageTitle = pageTitle + ': ' + page.month + '/' + page.year %}
{% endif %}
{% if is_year() %}
  {% set pageTitle = pageTitle + ': ' + page.year %}
{% endif %}
{% if pageTitle %}
  {% set pageTitle = pageTitle + ' | ' + config.title  %}
{% else %}
  {% set pageTitle = config.title  %}
{% endif %}

  {% if config.author %}
  <meta name="author" content="{{config.author}}">
  {% endif %}
  {% if config.keywords || theme.keywords %}
  <meta name="keywords" content="{{config.keywords || theme.keywords}}">
  {% endif %}
  {% set metaDescription = trim(strip_html(page.description || page.excerpt || page.content || config.description)) %}
  {% if metaDescription.length > 200 %}
    <meta name="description" content="{{ truncate( metaDescription, {length: 200}) }}">
  {% else %}
    <meta name="description" content="{{ metaDescription }}">
  {% endif %}
  <title>{{ pageTitle }}</title>  
  {% if config.favicon || theme.favicon%}
    {{ favicon_tag(config.favicon || theme.favicon) }}
  {% endif %}
<!-- Styles -->  
  {% if theme.stylesheets !== undefined && theme.stylesheets.length > 0 %}
  {{ css(theme.stylesheets) }}
  {% endif %}
  
<!-- Fonts -->
<link href='http://fonts.googleapis.com/css?family=Raleway:300,400,500,600,800%7COpen+Sans:300,400,500,600,700,800%7CMontserrat:400,700' el='stylesheet' type='text/css'>

<script>
  if (top !== self)
    top.location.replace(self.location.href);
</script>

{% include 'google-analytics.swig' %}