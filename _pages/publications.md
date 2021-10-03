---
layout: page
permalink: /publications/
title: Publications
description: <span style="color:blue;font-weight:bold">#</span> denotes equal contribution.
years: [2021, 2020]
nav: true
---

An up-to-date list is available on [Google Scholar](https://scholar.google.com/citations?view_op=list_works&hl=en&hl=en&user=hKwlT6wAAAAJ).

## Preprints


<div class="publications">
<h2 class="year">""</h2>
{% bibliography -f preprint %}

</div>

## Journal & Conference

<div class="publications">

{% for y in page.years %}
  <h2 class="year">{{y}}</h2>
  {% bibliography -f papers -q @*[year={{y}}]* %}
{% endfor %}

</div>
