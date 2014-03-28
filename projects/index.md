---
layout: default
title: Projects
slug: projects
base_url: "../"
---

Projects
===

{% for project in site.projects %}

###{{ project.name }}{% if project.url %}<a href="{{ project.url }}"> (Link)</a>{% endif %}{% if project.repo %}<a href="{{ project.repo }}"> (GitHub)</a>{% endif %}

{{ project.description}}

{% if project.youtube %} 
<iframe width="560" height="315" src="{{ project.youtube }}" frameborder="0" allowfullscreen></iframe>
{% elsif project.images %}
<div class="project-image-div">
  <ul>
    {% for img in project.images %}
      <li><a href="{{ page.base_url }}static/img/{{ img }}" data-lightbox="{{ project.name }}">
        <img class="hidden project-image" src="{{ page.base_url }}static/img/{{ img }}"/>
      </a></li>
    {% endfor %}
  </ul>
</div>
{% endif %}

{% endfor %}

<script type="text/javascript">
  $('.project-image-div').each(function() {
    var totalImageWidth = 0;
    var finished = 0;
    var $imgArray = $(this).children('ul').find('img');
    var imgLength = $imgArray.length;
    $imgArray.each(function () {
      $(this).on('load', function() {
        totalImageWidth += this.width;
        finished += 1;
        if (finished == imgLength) {
          $imgArray.each(function () {
            $(this).width(100 * (this.width / totalImageWidth) + "%");
            $(this).removeClass("hidden");
          });
        }
      });
    });
  });
</script>