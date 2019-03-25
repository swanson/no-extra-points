---
layout: post
title: Week 8 AAF Playoff Probabilities
nav: articles
author: kelset11
reddit: kelset11
---

Using 538's Elo ratings methodology (found [here](https://fivethirtyeight.com/features/introducing-nfl-elo-ratings/)), I've put together the current Elo ratings for the AAF. The only change I've made to 538's formula is that currently I do not include a home-field advantage modifier since I don't feel like there is enough data to calculate one yet.

I simulated the season 10,000 times to predict each teams' estimated wins, losses, and postseason results. Regarding postseason probabilities, I'm using the following tie-breakers: overall winning percentage, then division winning percentage, then head-to-head, then strength of victory, then a coin flip.

Ratings and percentages are rounded.

{% assign week_key = "week-08" %}
{% assign elo_key = week_key | append: "-elo" %}
{% assign odds_key = week_key | append: "-odds" %}

<div>
  <h3 class="team-header aaf-header">Elo Ratings</h3>
  <table class="elo-table nowrap stripe">
    <thead>
      <tr class="text-xs bg-blue-lightest">
        <th>Elo Rating</th>
        <th>Change</th>
        <th>Team</th>
        <th>Record</th>
        <th>eWin</th>
        <th>eLoss</th>
      </tr>
    </thead>
    <tbody>
      {% for rating in site.data.playoff_odds[elo_key] %}
        <tr class="text-xs text-center">
          <td>{{ rating.elo_rating }}</td>
          <td>{{ rating.change }}</td>
          <td>{{ rating.team }}</td>
          <td>{{ rating.record }}</td>
          <td>{{ rating.ewin }}</td>
          <td>{{ rating.eloss }}</td>
        </tr>
      {% endfor %}
    </tbody>
  </table>
</div>

With a win this week, Orlando became the first team to clinch a playoff berth. Memphis looked to be headed for elimination from playoff contention, but they rallied from an 11-point deficit to tie the game late and then went on to defeat Birmingham in the first overtime game in the Alliance’s short history.

Arizona came away with huge victory over San Diego. The win, which sets up a potential battle for first place in the West next week when they travel to San Antonio, bumped their playoff chances from 41% to 74%.

{% assign confs = "Eastern,Western" | split: "," %}
{% for conference in confs %}

  <div>
    <h3 class="aaf-header-small">{{ conference }} Conference - Playoff Probabilities</h3>
    <table class="odds-table nowrap stripe">
      <thead>
        <tr class="text-xs bg-blue-lightest">
          <th>Team</th>
          <th>Playoffs</th>
          <th>Final</th>
          <th>Champion</th>
        </tr>
      </thead>
      <tbody>
        {% for rating in site.data.playoff_odds[odds_key] %}
          {% if rating.conference == conference %}
            <tr class="text-xs text-center">
              <td>{{ rating.team }}</td>
              <td data-order="{{ rating.playoffs | remove: '>' | remove: '<' | remove: '%' }}">{{ rating.playoffs }}</td>
              <td data-order="{{ rating.final | remove: '>' | remove: '<' | remove: '%' }}">{{ rating.final }}</td>
              <td data-order="{{ rating.champion | remove: '>' | remove: '<' | remove: '%' }}">{{ rating.champion }}</td>
            </tr>
          {% endif %}
        {% endfor %}
      </tbody>
    </table>
  </div>
{% endfor %}

<script>
  $('.elo-table').DataTable({
    scrollX: true,
    paging: false,
    searching: false,
    ordering: true,
    info: false,
    order: [[ 0, "desc"]]
  });

  $('.odds-table').DataTable({
    paging: false,
    searching: false,
    ordering: true,
    info: false,
    order: [[ 1, "desc"]]
  });
</script>
