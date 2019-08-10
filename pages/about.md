---
layout: page
title: About
description: 点滴起步学编程
keywords: ABOP1024, Winn, MoonkyMonkey
comments: true
menu: 关于
permalink: /about/
---

A bit of Programmer 从点滴起步学编程

## 联系

{% for website in site.data.social %}
* {{ website.sitename }}：[@{{ website.name }}]({{ website.url }})
{% endfor %}

## Skill Keywords

{% for category in site.data.skills %}
### {{ category.name }}
<div class="btn-inline">
{% for keyword in category.keywords %}
<button class="btn btn-outline" type="button">{{ keyword }}</button>
{% endfor %}
</div>
{% endfor %}
