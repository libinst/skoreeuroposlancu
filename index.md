---
layout: page
title:  "Skóre senátorů"
---

<div class="row">
  <div class="col-md-6">
    <h1>Deset nejlepších</h1>
    {% for senator in site.data.ranking_nejlepsi limit:10 %}
      <div class="panel panel-success">
        <div class="panel-body">
          <div class="row">
            <div class="col-md-3">
              {% assign id = senator.linkurl | replace_first: '&o=7&l=cz', '' | replace_first: 'http://www.psp.cz/sqw/detail.sqw?id=', '' %}
              <img src="http://www.psp.cz/eknih/cdrom/2013ps/eknih/2013ps/poslanci/small/s{{ id }}.jpg" class="img-thumbnail">
            </div>
            <div class="col-md-9">          
              <h3 style="margin-top:0"><a class="page-link" href="{{ senator.jmeno | datapage_url: '/senatori' }}">{{ senator.jmeno }}</a></h3>
              {{ senator.strana }}
            </div>
          </div>
        </div>
        <div class="panel-footer success">
          <h2 style="text-align:center">{{ senator.procent }}</h2>
        </div>
      </div>
    {% endfor %}
  </div>
  <div class="col-md-6">
    <h1>Deset nejhorších</h1>
    {% for senator in site.data.ranking_nejhorsi limit:10 %}
      <div class="panel panel-danger">
        <div class="panel-body">
          <div class="row">
            <div class="col-md-3">
              {% assign id = senator.linkurl | replace_first: '&o=7&l=cz', '' | replace_first: 'http://www.psp.cz/sqw/detail.sqw?id=', '' %}
              <img src="http://www.psp.cz/eknih/cdrom/2013ps/eknih/2013ps/poslanci/small/s{{ id }}.jpg" class="img-thumbnail">
            </div>
            <div class="col-md-9">          
              <h3 style="margin-top:0"><a class="page-link" href="{{ senator.jmeno | datapage_url: '/senatori' }}">{{ senator.jmeno }}</a></h3>
              {{ senator.strana }}
            </div>
          </div>
        </div>
        <div class="panel-footer">
          <h2 style="text-align:center">{{ senator.procent }}</h2>
        </div>
      </div>
    {% endfor %}
  </div>
</div>


<!-- | datapage_url: "/poslanci" -->
