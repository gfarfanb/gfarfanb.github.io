---
layout: default
title: Way of The Developer Log
---

#### $ tail -f way-of-the-develop.log
---
{% for log in site.data.log %}
{% assign number = 0 %}
{% for entry in log.entries %}
{% assign number = number | plus: 1 %}
<span class="log">{% include log.html date=log.date number=number line=entry %}</span>
{% endfor %}
{% endfor %}
