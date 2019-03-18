---
layout: post
title: Week 7 AAF Playoff Probabilities
nav: articles
author: kelset11
reddit: kelset11
---

Using 538's Elo ratings methodology (found [here](https://fivethirtyeight.com/features/introducing-nfl-elo-ratings/)), I've put together the current Elo ratings for the AAF. The only change I've made to 538's formula is that currently I do not include a home-field advantage modifier since I don't feel like there is enough data to calculate one yet.

I simulated the season 10,000 times to predict each teams' estimated wins, losses, and postseason results. Regarding postseason probabilities, I'm using the following tie-breakers: overall winning percentage, then division winning percentage, then head-to-head, then strength of victory, then a coin flip.

Ratings and percentages are rounded.

{% assign week_key = "week-07" %}
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

With four weeks remaining, the playoff picture is starting to become clear. The East is virtually locked up with Orlando and Birmingham all but guaranteed to make it to the post-season.

In the West, it's a three-team race for two spots with San Antonio controlling their destiny and the Hotshots and Fleet still in mix. Salt Lake is still holding onto hope, but they'll need many breaks to go their way in the last month of the regular season.

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
