---
layout: page
title: Search
---

<header>
  <div id="search-searchbar"></div>
</header>
<main>
  <div class="post-list" id="search-hits">
    {% for post in site.posts %}
      <div class="post-item">
        <h3>
            <a class="post-link" href="{{ site.github.url }}{{ post.url }}">
              {{ post.title }}&nbsp;&nbsp;&nbsp;
              <small class="post-line">
                <i class="fa fa-calendar" aria-hidden="true"></i> {{ post.date | date_to_string }} - 
                <i class="fa fa-clock-o" aria-hidden="true"></i> {% include read-time.html item=post %}
              </small>
            </a>
        </h3>

        <div class="post-snippet">{{ post.excerpt }}</div>
      </div>
    {% endfor %}
  </div>
</main>

{% include algolia.html %}
