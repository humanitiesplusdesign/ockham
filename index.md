---
layout: front
---


<h2>Activity in the Lab</h2>
<div class="posts">
{% for post in site.tags['front'] %}
<h3><span class="post-date">{{ post.date | date: "%b %-d, %Y" }}</span><br /><a class="post-link" href="{{ post.url }}">{{ post.title }}</a></h3>
<p>{{ post.excerpt }}</p>
{% endfor %}
</div>

  
  
    

  


 
