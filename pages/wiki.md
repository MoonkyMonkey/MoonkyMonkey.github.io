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
<li class="listing-item"><a href="https://help.github.com/en/articles/keyboard-shortcuts">Github Keyboard-shotcuts</a></li>
<li class="listing-item"><a href="https://google.github.io/styleguide/cppguide.html">Google C++ Style Guide</a></li>
<li class="listing-item"><a href="https://github.com/jlevy/the-art-of-command-line/blob/master/README-zh.md">命令行的艺术</a></li>
<li class="listing-item"><a href="https://github.com/ryanhanwu/How-To-Ask-Questions-The-Smart-Way/blob/master/README-zh_CN.md">提问的智慧</a></li>
<li class="listing-item"><a href="https://linuxtools-rst.readthedocs.io/zh_CN/latest/base/index.html#">Linux使用手册</a></li>
  
</ul>
