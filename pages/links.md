---
layout: page
title: Links
description: 博客链接
keywords: 链接
comments: true
menu: 链接
permalink: /links/
---
Ideas worth spreading, Knowledge worth Sharing.

> 博客链接

{% for link in site.data.links %}
  {% if link.src == 'www' %}
* [{{ link.name }}]({{ link.url }})
  {% endif %}
{% endfor %}

> 友情链接

{% for link in site.data.links %}
  {% if link.src == 'life' %}
* [{{ link.name }}]({{ link.url }})
  {% endif %}
{% endfor %}
