---
layout: custom
permalink: /news/
title: News Archive
description: All news and updates
nav: false
---

<div class="news-archive">
  {% assign news = site.news | reverse %}
  {% for item in news %}
    <div class="news-item">
      <div class="news-date">{{ item.date | date: "%b %-d, %Y" }}</div>
      <div class="news-content">
        {% if item.inline %}
          {{ item.content | remove: '<p>' | remove: '</p>' | emojify }}
        {% else %}
          <a class="news-link" href="{{ item.url | relative_url }}">{{ item.title }}</a>
        {% endif %}
      </div>
    </div>
  {% endfor %}
</div>

<style>
.news-archive {
  max-width: 800px;
  margin: 0 auto;
}

.news-item {
  display: flex;
  align-items: flex-start;
  gap: 1.5rem;
  padding: 1rem 0;
  border-bottom: 1px solid #eee;
}

.news-item:first-child {
  padding-top: 0;
}

.news-item:last-child {
  border-bottom: none;
}

.news-date {
  color: #666;
  font-size: 0.9rem;
  min-width: 100px;
  flex-shrink: 0;
  font-weight: 500;
}

.news-content {
  flex: 1;
  font-size: 0.95rem;
  line-height: 1.6;
}

.news-link {
  color: #333;
  text-decoration: none;
  font-weight: 500;
}

.news-link:hover {
  color: #666;
  text-decoration: underline;
}

/* Responsive design */
@media (max-width: 768px) {
  .news-item {
    flex-direction: column;
    gap: 0.5rem;
  }
  
  .news-date {
    min-width: auto;
    font-size: 0.8rem;
  }
}
</style> 