---
layout: default
---


Raptor is a platform offering a set of tools to easily and quickly connect your devices, making data they generate accessible from the cloud and offering mechanisms to interact with them remotely in order to build your connected solutions and applications.

![Features](/img/RaptorFeatures.png)

Raptor offers you specific tools to:

- <b>configure your device</b> allowing it to communicate and interact with Raptor cloud services in a secure way

- <b>manage data flows</b> produced by your devices and handle data storage, allow applications to subscribe for notifications about data changes and offer capabilities to perform actuation on your devices

- <b>build & deploy rapidly</b> your applications enjoying rich tools, open restful APIs and libraries aiming at simplifying the way in which you build your next IoT application



{% if site.posts %}
<div class="posts">
  {% for post in site.posts %}

    <article class="post">

      <h1><a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a></h1>

      <div class="entry">
        {{ post.excerpt }}
      </div>

      <a href="{{ site.baseurl }}{{ post.url }}" class="read-more">Read More</a>
    </article>
  {% endfor %}

</div>
{% endif %}
