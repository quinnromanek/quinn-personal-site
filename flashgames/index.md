---
layout: default
title: Flash Games
slug: games
base_url: "../"
---

Flash Games
===

{% for game in site.flashgames %}

#[{{ game.name }}]({{ site.base_url }}static/flash/{{ game.swf }})

{{ game.description }}

{% endfor %}