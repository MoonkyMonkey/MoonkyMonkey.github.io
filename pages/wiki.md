---
layout: page
title: Wiki
description: 人越学越觉得自己无知
keywords: 维基, Wiki
comments: false
menu: 维基
permalink: /wiki/
---

> 脑子就像内存，笔记就像硬盘。

<ul class="listing">
{% for wiki in site.wiki %}
{% if wiki.title != "Wiki Template" %}
<li class="listing-item"><a href="{{ site.url }}{{ wiki.url }}">{{ wiki.title }}</a></li>
{% endif %}
{% endfor %}
<li class="listing-item"><a href="https://google.github.io/styleguide/cppguide.html">Google C++ Style Guide</a></li>
</ul>
