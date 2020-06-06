---
layout: simple
title: My projects
permalink: /
footer: "Last updated in May 2020"
custom_menu:
  - { menu_title: "Contact me", url: "https://six-two.dev/#contact" }
  - { menu_title: "Donate", url: "https://six-two.dev/#send-money" }
content_class: sectioned
---

## Personal websites
{: #websites}

Static websites built with Jekyll and hosted by Github / Gitlab Pages:

- [My website](https://six-two.dev) and its [source code]({{ site.baseurl_my_gitlab }}six-two.gitlab.io)
- [My projects website (this website)]({{ site.baseurl_hosted }}) and its [source code]({{ site.baseurl_my_github }}six-two.github.io)

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
