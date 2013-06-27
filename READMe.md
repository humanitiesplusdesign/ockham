ockham
======

Platform for publishing collaborative research in the humanities

Beginning with Jekyll, Twitter Bootstrap, and GitHub we are building a static site publishing platform for humanities research. The goal is to keep it simple. No CMS, no elaborate back-end administration, just content managed directly by the scholars who create it. By design, content and formatting are kept separate, while making the maintaining and updating information easy for individuals without knowledge of (or interest in) HTML.



####Basic page structure:  

index.html  
about.html  
funding.html  
projects/project-title/index.html  
shared-research.html  
tools.html  
data.html  
partners.html  
blog/   


####Jekyll file structure (within gh-pages branch): 

_config.yml  

_includes   

_pages

_posts

>footer.html  
>header.html  

_layouts  
>default.html
>project-page.html
>post.html

bootstrap

index.md

###Markdown Template
\---  
layout: default  
group: ???  
title: Template  
array:  
\- img url  
\---  
As long as this front-yaml leads the file, Jekyll will be able to utilize it for the site. As many images can be listed for a slideshow. Title will display at the top of the browser. Rest of file will contain markdown content.
