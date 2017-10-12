---
layout: default
title: Way of The Developer Log
---

#### $ tail -f way-of-the-develop.log
---
{% for log in site.data.log %}
{% for entry in log.entries %}
<span class="log">{% include log.html date=log.date line=entry %}</span>
{% endfor %}
{% endfor %}
