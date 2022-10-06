---
title: Writing Samples
layout: default
---

{% for group in site.data.writings %}

<h2>{{group.title}}</h2>

<ul>
{% for writing in group.items %}
<li><a href='uploads/{{writing.cname}}.pdf'>{{writing.title}}</a></li>
{% endfor %}
</ul>

{% endfor %}
