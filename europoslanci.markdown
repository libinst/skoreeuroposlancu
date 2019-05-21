---
layout: page
title:  "Celkové pořadí"
permalink: "/celkove-poradi/index.html"
---

<table class="table table-striped">
<tbody>
{% for europoslanec in site.data.ranking %}
  <tr>
    <td>{{ forloop.index }}.</td>
    <td><a class="page-link" href="{{ europoslanec.jmeno | datapage_url: '/europoslanci' }}">{{ europoslanec.jmeno }}</a></td>
    <td>{{ europoslanec.strana }}</td>
    <td>{{ europoslanec.rank }}</td>
  </tr>
{% endfor %}
</tbody>
</table>

<!-- | datapage_url: "/poslanci" -->
