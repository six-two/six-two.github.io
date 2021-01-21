---
layout: simple
title: My projects
permalink: /
footer: "Last updated in January 2021"
custom_menu:
  - { menu_title: "Contact me", url: "https://six-two.dev/#contact" }
  - { menu_title: "Donate", url: "https://six-two.dev/#send-money" }
content_class: sectioned
custom_css:
 - index
---

<!-- TODO rewrite this as a multilingual react app -->

## Personal websites
{: #websites}

Static websites built with Jekyll:

- [My website](https://six-two.dev) and its [source code]({{ site.baseurl_my_gitlab }}six-two.gitlab.io)
- [My projects website (this website)]({{ site.baseurl_hosted }}) and its [source code]({{ site.baseurl_my_github }}six-two.github.io)
- [My photos](https://photos.six-two.dev)

## Web Apps
{: #web-apps}

{% for webapp in site.data.webapps %}
  <div class="web-app-listing">
    <h3>{{ webapp.name | default: "Unnamed project" }}</h3>
    <p>{{ webapp.description | default: "No description available yet" }}</p>
    <p class="status">Current status: {{ webapp.status | default: "Unknown" }}</p>
    <div class="buttons">
      {% if webapp.app-url %}
      <button onclick="window.open('{{ webapp.app-url | replace: '<projects>', site.baseurl_hosted }}', '_blank')">Open app</button>
      {% endif %}
      {% if webapp.source-url %}
      <button onclick="window.open('{{ webapp.source-url | replace: '<github>', site.baseurl_my_github }}', '_blank')">View source code</button>
      {% endif %}
    </div>
  </div>
{% endfor %}

## Misc

- [React template]({{ site.baseurl_my_github }}react_template): The template that is used for most of my web apps. It features support for small display, multilingual text and minification.

## Thanks

Thank you for visiting this website, [Vercel](https://vercel.com/) for hosting it and [Github](https://github.com/) for hosting its source code.
