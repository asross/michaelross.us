---
title: Writing Samples
layout: default
---

{% for group in site.data.writings %}

<h2>{{group[1].title}}</h2>

<ul>
{% for item in group[1].items %}
<li><a href='/writings/{{group[0]}}/{{item[0]}}'>{{item[1].title}}</a></li>
{% endfor %}
</ul>

{% endfor %}
