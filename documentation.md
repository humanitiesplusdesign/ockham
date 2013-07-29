# Ockham Documentation

## Slideshow

In a markdown content page.

1. In YAML header define the array. The list of image URIs in order of display.  

        array:
        - <img src="https://stanford.box.com/shared/static/ukaj05c47kcob94th9v9.jpg" />
        - <img src="https://stanford.box.com/shared/static/wuj2sfup0zz6qea50zp7.jpg" />
        - <img src="https://stanford.box.com/shared/static/fm1wkqcdujiwruemn7ge.jpg" />
        - <img src="https://stanford.box.com/shared/static/aospsvs1m8giohodae51.jpg" />
        - <img src="https://stanford.box.com/shared/static/d2whqxq29wxgw1gfau8z.jpg" />

2. Call the slideshow inline in the page.    

        {% include your-slides.html %}

3. And the slides.html should include this, where page.array is whatever you named the list of images above:

        <div id="myCarousel" class="carousel slide">
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>
            <!-- Carousel items -->
            <div class="carousel-inner">
                {% for item in page.array limit:1 %}
                    <div class="active item">{{ item }}</div>
                {% endfor %}
                {% for item in page.array offset:1 %}
                    <div class="item">{{ item }}</div>
                {% endfor %}
            </div>
            <!-- Carousel nav -->
            <a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
            <a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
        </div>
        
4. Multiple slideshows can be included in 1 page, just needs multiple YAML variables in the front-matter with different names and multiple slide.htmls to call the different variable names.
5. 1 style sheet can be utilized for every slideshow, or multiple can be used to have custom versions. An example of a general sheet would be:

        <style type="text/css">
           .carousel {
            margin-bottom: 50px;
          }
          .carousel .container {
            position: relative;
            z-index: 9;
          }
          .carousel-control {
            height: 50px;
            margin-top: 0;
            font-size: 120px;
            text-shadow: 0 1px 1px rgba(0,0,0,.4);
            background-color: gray;
            border: 0;
            z-index: 10;
          }
          .carousel .item {
            height: 700px;
          }
          .carousel img {
            position: absolute;
            top: 0;
            left: 0;
            min-width: 100%;
            height: 700px;
           }
         </style>
