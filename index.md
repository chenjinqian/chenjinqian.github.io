---
layout: page
title: Home Page
---
{% include JB/setup %}

This is Home Page of JinQian Chen. This blog is powered by Jekyll, and hosted on github page.

## About

I am ChenJinQian. Here is my home page. This is the place where I will record and share things I have learn, and post some personal articles.

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



