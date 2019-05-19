---
layout: page
title:  "Skóre europoslanců"
---

<div class="row">
  <div class="col-md-6">
    <h1>Deset nejlepších</h1>
    {% for europoslanec in site.data.ranking_nejlepsi limit:10 %}
      <div class="panel panel-success">
        <div class="panel-body">
          <div class="row">
            <div class="col-md-3">
              <img src="http://www.europarl.europa.eu/mepphoto/{{ europoslanec.idep }}.jpg" class="img-thumbnail">
            </div>
            <div class="col-md-9">          
              <h3 style="margin-top:0"><a class="page-link" href="{{ europoslanec.jmeno | datapage_url: '/europoslanci' }}">{{ europoslanec.jmeno }}</a></h3>
              {{ europoslanec.strana }}
            </div>
          </div>
        </div>
        <div class="panel-footer success">
          <h2 style="text-align:center">{{ europoslanec.procent }}</h2>
        </div>
      </div>
    {% endfor %}
  </div>
  <div class="col-md-6">
    <h1>Deset nejhorších</h1>
    {% for europoslanec in site.data.ranking_nejhorsi limit:10 %}
      <div class="panel panel-danger">
        <div class="panel-body">
          <div class="row">
            <div class="col-md-3">
              <img src="http://www.europarl.europa.eu/mepphoto/{{ europoslanec.idep }}.jpg" class="img-thumbnail">
            </div>
            <div class="col-md-9">          
              <h3 style="margin-top:0"><a class="page-link" href="{{ europoslanec.jmeno | datapage_url: '/europoslanci' }}">{{ europoslanec.jmeno }}</a></h3>
              {{ europoslanec.strana }}
            </div>
          </div>
        </div>
        <div class="panel-footer">
          <h2 style="text-align:center">{{ europoslanec.procent }}</h2>
        </div>
      </div>
    {% endfor %}
  </div>
</div>


<!-- | datapage_url: "/poslanci" -->
