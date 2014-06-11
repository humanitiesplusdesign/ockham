---
layout: page
title: Graduate Research Fellows Program
---




#Graduate Research Fellows Program
The Humanities+Design program brings the design process together with traditional humanities research practices to develop methods appropriate to the digital realm where using and making software, thinking visually, and thinking procedurally is essential. The Graduate Research Fellows program provides an environment for advanced graduate students to develop their own research projects while both learning about and contributing to the research practices developing around digitized and networked sources and software.
###The Laboratory Environment
The laboratory environment provides access to both digital and analog technologies in a setting that is conducive to work with data. The flexible configuration of the laboratory supports a range of activities: small group problem-solving, ad-hoc presentations, distance collaboration, and individual work.  The lab is a hub for sustained research activity where faculty, staff, graduate students and undergraduate students can commingle. It is a place to work through problems together and ask for feedback from each other.
This kind of work is by necessity collaborative. For the collaboration to be successful, we devote significant time and attention to building a cohort. Our lab culture is modeled on the Stanford Humanities Center Fellowship Program where intellectual exchange is fostered in a context intimate enough for social interactions to emerge.  At the same time, the Graduate Research Fellows benefit from cross-fertilization with projects running under both the Spatial History Lab and the Literary Lab at CESTA.

###Skills for the Data Humanist
Programmatically, we give the greatest attention to foundational skills. Fellows will learn how to manage data with versioning software and how to transform data for use with a range of different software tools. They will also be exposed to the theoretical underpinnings and methodological approaches to visualizing information. The students will learn laboratory practices including maintaining a record of their experiments in a laboratory notebook, regularly reviewing work in progress with their peers and taking a project from initial concept through to publishable work.  
The emphasis is on working with data and visual communication of research. The research agenda is not defined by any one technology (GIS, Natural Language Processing, Topic Modeling) nor does it assume that the application of computing to humanities research requires quantitative methods. Instead the aim of the lab is to empower students to apply their own methods by exposing them to techniques and tools for managing and manipulating data, generating and understanding data-driven graphics, and publishing the resulting research. 

###Developing Research and Learning Advanced Techniques
Graduate fellows bring their own research projects. They are asked to make an intellectual contribution to the program through their participation in the design process, contributing to the lab manual as it evolves, and posting to the lab blog. 
We cultivate intellectual engagement with presentations of work in progress and periodic workshops bringing in scholars from partner research centers outside of Stanford. These face-to-face meetings are further supported through online workspaces to maintain collaborative partnerships. 

The goal of the Humanities+Design Graduate Research Fellowship is to prepare graduate students for a future where digital scholarship is the norm. The program fosters an understanding of technology and its influence in the construction of meaning, giving students the tools to problematize data structures and visual models of data. Recognizing that data technologies have a mediating influence on research Fellows will have the opportunity to influence the design of the mediating technologies themselves.
<hr>

<h2>Fellows</h2>
<div class="group clearfix">
<h3>Current</h3>
<div class="masonry" class="row">
{% for person in site.data.people %}
  {% if person.hd_role contains 'fellow' %}
 <div class="col-md-6">
   <div class="well">
    <div class="col-md-3">
<img src="{{ person.image }}" alt="{{ person.name }}" width="100" class="img-rounded">
    </div>
    <div class="col-md-9">
<h4>{{ person.name }} <small>{{ person.department }}</small></h4>
<p>Project: {{ person.project-title }}</p> 
    </div>
   </div>
 </div>
{% endif %}
{% endfor %}
</div>
</div>
<div class="group clearfix">
<h3>Alumni</h3>
<div class="masonry" class="row">
{% for person in site.data.people %}
 {% if person.hd_role contains 'alumni' %}
 <div class="col-md-6">
   <div class="well">
    <div class="col-md-3">
<img src="{{ person.image }}" alt="{{ person.name }}" width="100" class="img-rounded">
    </div>
    <div class="col-md-9">
<h4>{{ person.name }} <small>{{ person.department }}</small></h4>
<p>Project: {{ person.project-title }}</p> 
    </div>
   </div>
 </div>
{% endif %}
{% endfor %}
</div>
</section>