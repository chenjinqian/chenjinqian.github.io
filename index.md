---
layout: page
title: Home Page
tagline: Supporting tagline
---
{% include JB/setup %}

This is Home Page of JinQian Chen.

## About

I am ChenJinQian. Here is my personal blog.

It is my own kingdom.  Here I am, here I speak.

## Recent Posts

<ul class="posts">
  {% for post in site.posts %}
  <li><span>{{ post.date | date_to_string }}</span> &raquo; <a href="{{ BASE_PATH }}{{ post.url }}">{{ post.title }}</a></li>
  <p>{{ post.excerpt }}</p>
  {% endfor %}
</ul>

## Links 
[Github](https://github.com/chenjinqian)
[Email](mailto:2012chenjinqian@gmail.com)



