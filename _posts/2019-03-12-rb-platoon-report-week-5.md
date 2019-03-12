---
layout: post
title: RB Platoon Report - Week 05
nav: articles
author: Jackson Conner
twitter: AAFAnalysis
---

The weekly **_RB Platoon Report_** series goes beyond the boxscores and tries to decipher the backfield situation for every Alliance team. With many teams employing a committee approach, identifying the valuable contributors at the RB position could make or break your fantasy week.

_Note: all snap counts and routes run data comes from game film analysis and are unofficial._

{% assign week_key = "week-05" %}

<div>
  <h3 class="team-header ari-header">Arizona Hotshots - Week 05</h3>
  <table class="rb-table nowrap stripe">
    <thead>
      <tr class="text-xs bg-blue-lightest">
        <th></th>
        <th colspan="2" class="border-l border-r border-grey-light">Boxscores</th>
        <th colspan="5" class="border-r border-grey-light">Usage</th>
        <th colspan="2" class="border-r border-grey-light">3rd Down</th>
        <th colspan="2" class="border-r border-grey-light">Red Zone</th>
        <th colspan="2" class="border-r border-grey-light">Goal Line / 2PT</th>
      </tr>
      <tr class="text-xs text-center">
        <th class="border-r border-grey-light">Name</th>
        <th>Rushing</th>
        <th class="border-r border-grey-light">Receiving</th>
        <th>Snaps</th>
        <th>Snap %</th>
        <th>Drives</th>
        <th>Routes</th>
        <th class="border-r border-grey-light">Touch %</th>
        <th>Snaps</th>
        <th class="border-r border-grey-light">Touches</th>
        <th>Snaps</th>
        <th class="border-r border-grey-light">Touches</th>
        <th>Snaps</th>
        <th>Touches</th>
      </tr>
    </thead>
    <tbody>
      {% for rb in site.data.rb_report[week_key] %}
        {% if rb.team == "ARI" %}
          <tr class="text-xs text-center">
            <td class="border-r border-grey-light">{{ rb.name }}</td>
            <td data-order="{{rb.carries}}">
              {{ rb.carries }} car<br/>
              {{ rb.yards }} yds<br/>
              {{ rb.tds }} TD, {{ rb.two_pt }} 2PT
            </td>
            <td data-order="{{rb.catches}}" class="border-r border-grey-light">
              {{ rb.catches }} rec / {{ rb.targets }} tar<br/>
              {{ rb.receiving_yards }} yds<br/>
              {{ rb.receiving_tds}} TD
            </td>
            <td>{{ rb.snap_count }}</td>
            <td>{{ rb.snap_percentage }}</td>
            <td>{{ rb.drives_played }}</td>
            <td>{{ rb.routes_ran }}</td>
            <td class="border-r border-grey-light">{{ rb.touch_percentage }}</td>
            <td>{{ rb.third_down_snaps }}</td>
            <td class="border-r border-grey-light">{{ rb.third_down_touches }}</td>
            <td>{{ rb.red_zone_snaps }}</td>
            <td class="border-r border-grey-light">{{ rb.red_zone_touches }}</td>
            <td>{{ rb.goal_line_2pt_snaps }}</td>
            <td>{{ rb.goal_line_2pt_touches }}</td>
          </tr>
        {% endif %}
      {% endfor %}
    </tbody>
  </table>
</div>

### Leadback: Jhurell Pressley

In a first-half massacre, Pressley’s lack of production was due mostly to being game scripted out early. Tim Cook’s reinsertion into the offense also hurt Pressley as Cook stole a possible Pressley rushing touchdown. Pressley only had 4 targets, but ran 26 routes as the Hotshots were in primarily catch up mode throughout the game. It was refreshing to see Pressley be the back when the Hotshots were down as I charted him with 26 of the Hotshots passing situation snaps, a new stat introduced this week. Pressley also played 9 third downs which led the team again.

Pressley seems to be the lead back but might be possibly game scripted out again next week against the Apollos.

### Grinder: Tim Cook

This was an odd game for Tim Cook to reappear in as a passing game script is not his usual habitat, but he was mostly in the game to run the ball. Twelve of his 20 snaps were handoffs to him and only 4 were routed run. 7 of those snaps also came in short yardage situations and he got touches on all of those snaps. He also had 3 goal line touches which led to his late-game touchdown. He seems to have reclaimed the grinder role and is back firmly in play as a TD reliant back with a decent chance to score week-to-week.

### Backup: Justin Stockton

Stockton continues to rush for a high YPC but he struggled to find the field at all. The reinsertion of Tim Cook to the regular rotation hurt him a lot more than Pressley. Stockton only played 17% of snaps, got 5 carries, and received no targets on his 3 routes ran. Stockton did play 5 third downs and 4 passing situations but that pales in comparison to Pressley’s usage numbers in that facet of the game.

With Stockton losing a lot of his playing time to Cook he went from a sleeper to someone I’m actively sleeping on in terms of fantasy.

<div>
  <h3 class="team-header orl-header">Orlando Apollos - Week 05</h3>
  <table class="rb-table nowrap stripe">
    <thead>
      <tr class="text-xs bg-blue-lightest">
        <th></th>
        <th colspan="2" class="border-l border-r border-grey-light">Boxscores</th>
        <th colspan="5" class="border-r border-grey-light">Usage</th>
        <th colspan="2" class="border-r border-grey-light">3rd Down</th>
        <th colspan="2" class="border-r border-grey-light">Red Zone</th>
        <th colspan="2" class="border-r border-grey-light">Goal Line / 2PT</th>
      </tr>
      <tr class="text-xs text-center">
        <th class="border-r border-grey-light">Name</th>
        <th>Rushing</th>
        <th class="border-r border-grey-light">Receiving</th>
        <th>Snaps</th>
        <th>Snap %</th>
        <th>Drives</th>
        <th>Routes</th>
        <th class="border-r border-grey-light">Touch %</th>
        <th>Snaps</th>
        <th class="border-r border-grey-light">Touches</th>
        <th>Snaps</th>
        <th class="border-r border-grey-light">Touches</th>
        <th>Snaps</th>
        <th>Touches</th>
      </tr>
    </thead>
    <tbody>
      {% for rb in site.data.rb_report[week_key] %}
        {% if rb.team == "ORL" %}
          <tr class="text-xs text-center">
            <td class="border-r border-grey-light">{{ rb.name }}</td>
            <td data-order="{{rb.carries}}">
              {{ rb.carries }} car<br/>
              {{ rb.yards }} yds<br/>
              {{ rb.tds }} TD, {{ rb.two_pt }} 2PT
            </td>
            <td data-order="{{rb.catches}}" class="border-r border-grey-light">
              {{ rb.catches }} rec / {{ rb.targets }} tar<br/>
              {{ rb.receiving_yards }} yds<br/>
              {{ rb.receiving_tds}} TD
            </td>
            <td>{{ rb.snap_count }}</td>
            <td>{{ rb.snap_percentage }}</td>
            <td>{{ rb.drives_played }}</td>
            <td>{{ rb.routes_ran }}</td>
            <td class="border-r border-grey-light">{{ rb.touch_percentage }}</td>
            <td>{{ rb.third_down_snaps }}</td>
            <td class="border-r border-grey-light">{{ rb.third_down_touches }}</td>
            <td>{{ rb.red_zone_snaps }}</td>
            <td class="border-r border-grey-light">{{ rb.red_zone_touches }}</td>
            <td>{{ rb.goal_line_2pt_snaps }}</td>
            <td>{{ rb.goal_line_2pt_touches }}</td>
          </tr>
        {% endif %}
      {% endfor %}
    </tbody>
  </table>
</div>

### Starter and Primary Pass-Catching Back: D’Ernest Johnson

While Johnson did not play the majority of snaps last week, he still produced a really useful day through both the ground and the air attack. Johnson had an efficient day on the ground, although he did only see 10 carries, but he made his hay in the passing game. Johnson turned his healthy 18 routes ran into an even healthier 6 targets, 5 receptions, and 73 receiving yards. They also did not take Johnson off the field in the red zone as he logged 6 of those snaps to Smith’s 3.

Also, Johnson remains the go-to guy when the Apollos want to close out a game, getting almost all the snaps in the final “milk-the-clock” drive. With his versatility and usage, Johnson remains one of the most useful fantasy backs in the league.

### Rotational Back: De’Veon Smith

De’Veon Smith has really found his groove as of late running the football. He received a league-high 14 carries this week and turned that into 119 yards, which was also a league high. Smith has not scored since week 2 but his rushing numbers have gone up since then. However, do not expect much from him in the passing game. He played 6 third downs but lots of them were third and short situations and he ran only 2 routes on third down. The passing game usage is keeping him behind Johnson for me, but Smith has really solidified himself in this offense.

### Change of Pace Back: Ryan Green

The coaches decided to get Ryan Green sometime this week, as he played 8 snaps and carried the ball 3 times for 17 yards. Green did, however, miss a block in pass protection which led to a hit on Gilbert so this experiment with him at RB might be short-lived. It seems like the Apollos want this to be a two-back system and Green might only get some game action to give breathers. He’s not really too fantasy relevant.

### Inactive: Akeem Hunt

Hunt had one of the biggest falloffs of 2019. There has to be something we don’t know about as he was the starter and played well, but then suddenly starts getting less and less time and is eventually inactive. Whatever it is has made him completely unplayable now and basically droppable in season long.

<div>
  <h3 class="team-header bir-header">Birmingham Iron - Week 05</h3>
  <table class="rb-table nowrap stripe">
    <thead>
      <tr class="text-xs bg-blue-lightest">
        <th></th>
        <th colspan="2" class="border-l border-r border-grey-light">Boxscores</th>
        <th colspan="5" class="border-r border-grey-light">Usage</th>
        <th colspan="2" class="border-r border-grey-light">3rd Down</th>
        <th colspan="2" class="border-r border-grey-light">Red Zone</th>
        <th colspan="2" class="border-r border-grey-light">Goal Line / 2PT</th>
      </tr>
      <tr class="text-xs text-center">
        <th class="border-r border-grey-light">Name</th>
        <th>Rushing</th>
        <th class="border-r border-grey-light">Receiving</th>
        <th>Snaps</th>
        <th>Snap %</th>
        <th>Drives</th>
        <th>Routes</th>
        <th class="border-r border-grey-light">Touch %</th>
        <th>Snaps</th>
        <th class="border-r border-grey-light">Touches</th>
        <th>Snaps</th>
        <th class="border-r border-grey-light">Touches</th>
        <th>Snaps</th>
        <th>Touches</th>
      </tr>
    </thead>
    <tbody>
      {% for rb in site.data.rb_report[week_key] %}
        {% if rb.team == "BIR" %}
          <tr class="text-xs text-center">
            <td class="border-r border-grey-light">{{ rb.name }}</td>
            <td data-order="{{rb.carries}}">
              {{ rb.carries }} car<br/>
              {{ rb.yards }} yds<br/>
              {{ rb.tds }} TD, {{ rb.two_pt }} 2PT
            </td>
            <td data-order="{{rb.catches}}" class="border-r border-grey-light">
              {{ rb.catches }} rec / {{ rb.targets }} tar<br/>
              {{ rb.receiving_yards }} yds<br/>
              {{ rb.receiving_tds}} TD
            </td>
            <td>{{ rb.snap_count }}</td>
            <td>{{ rb.snap_percentage }}</td>
            <td>{{ rb.drives_played }}</td>
            <td>{{ rb.routes_ran }}</td>
            <td class="border-r border-grey-light">{{ rb.touch_percentage }}</td>
            <td>{{ rb.third_down_snaps }}</td>
            <td class="border-r border-grey-light">{{ rb.third_down_touches }}</td>
            <td>{{ rb.red_zone_snaps }}</td>
            <td class="border-r border-grey-light">{{ rb.red_zone_touches }}</td>
            <td>{{ rb.goal_line_2pt_snaps }}</td>
            <td>{{ rb.goal_line_2pt_touches }}</td>
          </tr>
        {% endif %}
      {% endfor %}
    </tbody>
  </table>
</div>

### Bellcow: Trent Richardson

Trent Richardson’s bellcow status is starting to come into question as he had a season-low 8 carries and predictably averaged 2.6 YPC on those carries. However, you can laugh all you want, he is still putting up fantasy points. He scored again and caught 4 of 5 targets for 37 yards on a whopping 25 routes ran. Richardson did post a bellcow worthy 68% touch percentage and has proved he is game script proof. This week the Iron made a switch to Keith Price at QB, which will hopefully bolster the offense and make Richardson even more productive. He is still an elite RB1.

### Change of Pace: LaDarius Perkins

Perkins only role seems to be to give Richardson a break in passing situations and play in hurry up. Perkins has been essentially useless on the ground as he has 42 rushing yards over 5 weeks. This week Perkins ran routes on all 13 of his snaps and 7 of those snaps were on third down in passing situations. I don’t hate Perkins' skillset but the opportunity just isn’t there for him and his 11% touch percentage right now.

### Backup: Brandon Ross

A week removed from his highly productive game on the ground Ross came out and, of course, posted 8 rushing yards. In a rather surprising development, Ross was the first player to catch a TD pass on the Iron and it was a 30 yard one that saved his fantasy day. Ross did run 9 routes, but he did not play in any passing situations and that was his only target. A week ago it was looking like he posed a threat to Richardson’s role, but now it’s looking like a lesser threat than originally presumed.

### Deep backup: Ty Isaac

Ty Isaac is a name that probably no one knows and it should stay that way as he did not take a snap this week for the Iron. Don’t get cute.

<div>
  <h3 class="team-header sa-header">San Antonio Commanders - Week 05</h3>
  <table class="rb-table nowrap stripe">
    <thead>
      <tr class="text-xs bg-blue-lightest">
        <th></th>
        <th colspan="2" class="border-l border-r border-grey-light">Boxscores</th>
        <th colspan="5" class="border-r border-grey-light">Usage</th>
        <th colspan="2" class="border-r border-grey-light">3rd Down</th>
        <th colspan="2" class="border-r border-grey-light">Red Zone</th>
        <th colspan="2" class="border-r border-grey-light">Goal Line / 2PT</th>
      </tr>
      <tr class="text-xs text-center">
        <th class="border-r border-grey-light">Name</th>
        <th>Rushing</th>
        <th class="border-r border-grey-light">Receiving</th>
        <th>Snaps</th>
        <th>Snap %</th>
        <th>Drives</th>
        <th>Routes</th>
        <th class="border-r border-grey-light">Touch %</th>
        <th>Snaps</th>
        <th class="border-r border-grey-light">Touches</th>
        <th>Snaps</th>
        <th class="border-r border-grey-light">Touches</th>
        <th>Snaps</th>
        <th>Touches</th>
      </tr>
    </thead>
    <tbody>
      {% for rb in site.data.rb_report[week_key] %}
        {% if rb.team == "SA" %}
          <tr class="text-xs text-center">
            <td class="border-r border-grey-light">{{ rb.name }}</td>
            <td data-order="{{rb.carries}}">
              {{ rb.carries }} car<br/>
              {{ rb.yards }} yds<br/>
              {{ rb.tds }} TD, {{ rb.two_pt }} 2PT
            </td>
            <td data-order="{{rb.catches}}" class="border-r border-grey-light">
              {{ rb.catches }} rec / {{ rb.targets }} tar<br/>
              {{ rb.receiving_yards }} yds<br/>
              {{ rb.receiving_tds}} TD
            </td>
            <td>{{ rb.snap_count }}</td>
            <td>{{ rb.snap_percentage }}</td>
            <td>{{ rb.drives_played }}</td>
            <td>{{ rb.routes_ran }}</td>
            <td class="border-r border-grey-light">{{ rb.touch_percentage }}</td>
            <td>{{ rb.third_down_snaps }}</td>
            <td class="border-r border-grey-light">{{ rb.third_down_touches }}</td>
            <td>{{ rb.red_zone_snaps }}</td>
            <td class="border-r border-grey-light">{{ rb.red_zone_touches }}</td>
            <td>{{ rb.goal_line_2pt_snaps }}</td>
            <td>{{ rb.goal_line_2pt_touches }}</td>
          </tr>
        {% endif %}
      {% endfor %}
    </tbody>
  </table>
</div>

### Lead Back: Kenneth Farrow

It was a bit of a rough week for Farrow, but it was salvaged by a TD and a late game 43-yard reception on a screen pass. Farrow did only play 43% of the snaps, but that probably would have been near 50% if he did not get injured near the end of the game. Despite not being the most touted pass-catching back on the team he lead the team in routes run at 10 and third down snaps at 6. He did not play too many passing situations but the Commanders were in a pretty run friendly script most of the game.

What really stands out is his goal line and short yardage usage numbers. He is the guy down there and will continue to score for this team. We must monitor his practice reports but if he is able to play next week he will be a top RB play.

### Change of Pace/Scat back: Trey Williams

As the president of the Trey Williams Fan Club, I was a little disappointed in his usage this past week. I’m not mad at 10 carries, but they need to use him more in the passing game as he only had 4 routes ran and even got passed up by Aaron Green in that department. They do seem to be somewhat open to using Williams in the red zone, even if he is not the primary ball carrier down there, as he had 3 touches in the red zone and 1 at the goal line. That led to almost another TD, but Williams stumbled as he was closing in on the goal line after a terrific run. If Farrow misses time, Williams could be in line for a monster day.

### Another Change of Pace/Scat back: Aaron Green

Aaron Green entered the rotation again last week -- after being inactive for two weeks -- and played in 18 straight snaps and dipped out again. Most of his playing time came on a 13 play drive to start the second half and that was where almost all of his limited production came in as well. Green has played decently this year and will be one of the biggest bargain plays if Farrow is to miss time.

### Inactive: David Cobb

After not doing too much recently, Cobb was flat out inactive this week.

<div>
  <h3 class="team-header sl-header">Salt Lake Stallions - Week 05</h3>
  <table class="rb-table nowrap stripe">
    <thead>
      <tr class="text-xs bg-blue-lightest">
        <th></th>
        <th colspan="2" class="border-l border-r border-grey-light">Boxscores</th>
        <th colspan="5" class="border-r border-grey-light">Usage</th>
        <th colspan="2" class="border-r border-grey-light">3rd Down</th>
        <th colspan="2" class="border-r border-grey-light">Red Zone</th>
        <th colspan="2" class="border-r border-grey-light">Goal Line / 2PT</th>
      </tr>
      <tr class="text-xs text-center">
        <th class="border-r border-grey-light">Name</th>
        <th>Rushing</th>
        <th class="border-r border-grey-light">Receiving</th>
        <th>Snaps</th>
        <th>Snap %</th>
        <th>Drives</th>
        <th>Routes</th>
        <th class="border-r border-grey-light">Touch %</th>
        <th>Snaps</th>
        <th class="border-r border-grey-light">Touches</th>
        <th>Snaps</th>
        <th class="border-r border-grey-light">Touches</th>
        <th>Snaps</th>
        <th>Touches</th>
      </tr>
    </thead>
    <tbody>
      {% for rb in site.data.rb_report[week_key] %}
        {% if rb.team == "SL" %}
          <tr class="text-xs text-center">
            <td class="border-r border-grey-light">{{ rb.name }}</td>
            <td data-order="{{rb.carries}}">
              {{ rb.carries }} car<br/>
              {{ rb.yards }} yds<br/>
              {{ rb.tds }} TD, {{ rb.two_pt }} 2PT
            </td>
            <td data-order="{{rb.catches}}" class="border-r border-grey-light">
              {{ rb.catches }} rec / {{ rb.targets }} tar<br/>
              {{ rb.receiving_yards }} yds<br/>
              {{ rb.receiving_tds}} TD
            </td>
            <td>{{ rb.snap_count }}</td>
            <td>{{ rb.snap_percentage }}</td>
            <td>{{ rb.drives_played }}</td>
            <td>{{ rb.routes_ran }}</td>
            <td class="border-r border-grey-light">{{ rb.touch_percentage }}</td>
            <td>{{ rb.third_down_snaps }}</td>
            <td class="border-r border-grey-light">{{ rb.third_down_touches }}</td>
            <td>{{ rb.red_zone_snaps }}</td>
            <td class="border-r border-grey-light">{{ rb.red_zone_touches }}</td>
            <td>{{ rb.goal_line_2pt_snaps }}</td>
            <td>{{ rb.goal_line_2pt_touches }}</td>
          </tr>
        {% endif %}
      {% endfor %}
    </tbody>
  </table>
</div>

### Early Down Back: Joel Bouagnon

Bouagnon did not have quite the volume we were hoping for in the wake of Oliver’s injury, but he caught 2 passes and hit pay-dirt twice. The Stallions seemed to open it up a lot more this week via the passing game as Woodrum tossed the ball 48 times. The red zone passing percentage was also a bit high as Bouagnon received only 3 touches on 11 red zone snaps, although they were all inside the five. Newby played a significant amount of time, but did get injured and that when Bouagnon racked up a lot of his passing situation usage. Newby's injury is one to keep an eye on, but I expect they would entrust pass-catching duties in the newly signed Holley.

### Pass-catching Backup: Terrell Newby

Newby saw a massive increase in snaps this week and it was obvious they wanted to get him involved in the passing game. He ran 19 routes before his injury and caught 4 of his 5 targets for 33 yards. He also had some chunk plays on screens that were called back due to holding. On the ground, it was a different story however as he ran 6 times for a whopping 2 yards. Newby did get injured late in the game, though, and his injury should be monitored closely throughout the week.

### Former Goalline Back: Matt Asiata

Asiata is basically irrelevant. If Newby were to miss time _maybe_ he squeaks in a few more snaps but I wouldn’t bet on it. He is still unplayable.

### Possible Newby Replacement: Nick Holley

If Newby were to miss time, Holley becomes extremely interesting. He has a pass catching background in college and would fill in nicely for Newby. This is strictly only if Newby does not play though. If Newby does play, don’t play him. If Newby doesn’t play, he could be a cheap filler player that will catch some passes.

### Injured Reserve: Brandon Oliver

Oliver is on the injured reserve and he might not be able to return for the rest of the season.

<div>
  <h3 class="team-header sd-header">San Diego Fleet - Week 05</h3>
  <table class="rb-table nowrap stripe">
    <thead>
      <tr class="text-xs bg-blue-lightest">
        <th></th>
        <th colspan="2" class="border-l border-r border-grey-light">Boxscores</th>
        <th colspan="5" class="border-r border-grey-light">Usage</th>
        <th colspan="2" class="border-r border-grey-light">3rd Down</th>
        <th colspan="2" class="border-r border-grey-light">Red Zone</th>
        <th colspan="2" class="border-r border-grey-light">Goal Line / 2PT</th>
      </tr>
      <tr class="text-xs text-center">
        <th class="border-r border-grey-light">Name</th>
        <th>Rushing</th>
        <th class="border-r border-grey-light">Receiving</th>
        <th>Snaps</th>
        <th>Snap %</th>
        <th>Drives</th>
        <th>Routes</th>
        <th class="border-r border-grey-light">Touch %</th>
        <th>Snaps</th>
        <th class="border-r border-grey-light">Touches</th>
        <th>Snaps</th>
        <th class="border-r border-grey-light">Touches</th>
        <th>Snaps</th>
        <th>Touches</th>
      </tr>
    </thead>
    <tbody>
      {% for rb in site.data.rb_report[week_key] %}
        {% if rb.team == "SD" %}
          <tr class="text-xs text-center">
            <td class="border-r border-grey-light">{{ rb.name }}</td>
            <td data-order="{{rb.carries}}">
              {{ rb.carries }} car<br/>
              {{ rb.yards }} yds<br/>
              {{ rb.tds }} TD, {{ rb.two_pt }} 2PT
            </td>
            <td data-order="{{rb.catches}}" class="border-r border-grey-light">
              {{ rb.catches }} rec / {{ rb.targets }} tar<br/>
              {{ rb.receiving_yards }} yds<br/>
              {{ rb.receiving_tds}} TD
            </td>
            <td>{{ rb.snap_count }}</td>
            <td>{{ rb.snap_percentage }}</td>
            <td>{{ rb.drives_played }}</td>
            <td>{{ rb.routes_ran }}</td>
            <td class="border-r border-grey-light">{{ rb.touch_percentage }}</td>
            <td>{{ rb.third_down_snaps }}</td>
            <td class="border-r border-grey-light">{{ rb.third_down_touches }}</td>
            <td>{{ rb.red_zone_snaps }}</td>
            <td class="border-r border-grey-light">{{ rb.red_zone_touches }}</td>
            <td>{{ rb.goal_line_2pt_snaps }}</td>
            <td>{{ rb.goal_line_2pt_touches }}</td>
          </tr>
        {% endif %}
      {% endfor %}
    </tbody>
  </table>
</div>

### Rotational Back (starter): Ja’Quan Gardner

Yikes, Gardner has really fallen off after being regarded as one of the AAF’s premiere fantasy running backs. He got 9 carries but only turned that into 3 rushing yards. I love Gardner’s talent, but this is starting to turn into a three-headed backfield with the addition of Sankey. Also, they did not run the ball nearly as much with Bercovici at the helm.

Gardner does not see too much specialized usage, but he did run 12 routes and caught all three of his targets for 16 yards. Going forward, it’s obvious that he is not what some thought he was (the clear best back in the league), but the efficiency should turn around and he will still be viable.

### Pass Blocking Power Back: Terrell Watson

As ineffective a day Watson had, it was still atop this backfield. Watson led the team in overall snaps, drives, routes run, red zone, goal line, short yardage, third down, and passing situation usage. He has the safest role on the team, in terms of being on the field. Production-wise, Watson has yet to score or give us a huge game and seems to be more valuable to the team than fantasy owners. Whatever it is, he will continue to be an RB2 going forward for fantasy.

### Backup: Bishop Sankey

I’m not really sure what Sankey’s exact role is so I just pegged him as “backup”. He carried the ball 5 times and had 3 targets, so he seems to just be a rotational guy without a fixed role. Maybe he sees a bigger role this week as he was just be eased in last week, but he still has two guys in front of him. Whatever happens, Sankey seems locked into this three-headed backfield and is not the “premiere” fantasy option some were hoping for at the start of the season.

<div>
  <h3 class="team-header mem-header">Memphis Express - Week 05</h3>
  <table class="rb-table nowrap stripe">
    <thead>
      <tr class="text-xs bg-blue-lightest">
        <th></th>
        <th colspan="2" class="border-l border-r border-grey-light">Boxscores</th>
        <th colspan="5" class="border-r border-grey-light">Usage</th>
        <th colspan="2" class="border-r border-grey-light">3rd Down</th>
        <th colspan="2" class="border-r border-grey-light">Red Zone</th>
        <th colspan="2" class="border-r border-grey-light">Goal Line / 2PT</th>
      </tr>
      <tr class="text-xs text-center">
        <th class="border-r border-grey-light">Name</th>
        <th>Rushing</th>
        <th class="border-r border-grey-light">Receiving</th>
        <th>Snaps</th>
        <th>Snap %</th>
        <th>Drives</th>
        <th>Routes</th>
        <th class="border-r border-grey-light">Touch %</th>
        <th>Snaps</th>
        <th class="border-r border-grey-light">Touches</th>
        <th>Snaps</th>
        <th class="border-r border-grey-light">Touches</th>
        <th>Snaps</th>
        <th>Touches</th>
      </tr>
    </thead>
    <tbody>
      {% for rb in site.data.rb_report[week_key] %}
        {% if rb.team == "MEM" %}
          <tr class="text-xs text-center">
            <td class="border-r border-grey-light">{{ rb.name }}</td>
            <td data-order="{{rb.carries}}">
              {{ rb.carries }} car<br/>
              {{ rb.yards }} yds<br/>
              {{ rb.tds }} TD, {{ rb.two_pt }} 2PT
            </td>
            <td data-order="{{rb.catches}}" class="border-r border-grey-light">
              {{ rb.catches }} rec / {{ rb.targets }} tar<br/>
              {{ rb.receiving_yards }} yds<br/>
              {{ rb.receiving_tds}} TD
            </td>
            <td>{{ rb.snap_count }}</td>
            <td>{{ rb.snap_percentage }}</td>
            <td>{{ rb.drives_played }}</td>
            <td>{{ rb.routes_ran }}</td>
            <td class="border-r border-grey-light">{{ rb.touch_percentage }}</td>
            <td>{{ rb.third_down_snaps }}</td>
            <td class="border-r border-grey-light">{{ rb.third_down_touches }}</td>
            <td>{{ rb.red_zone_snaps }}</td>
            <td class="border-r border-grey-light">{{ rb.red_zone_touches }}</td>
            <td>{{ rb.goal_line_2pt_snaps }}</td>
            <td>{{ rb.goal_line_2pt_touches }}</td>
          </tr>
        {% endif %}
      {% endfor %}
    </tbody>
  </table>
</div>

### Lead back: Zac Stacy

Stacy may not have had the prettiest day, but he finished with 86 total yards and 2 touchdowns on 15 touches. Stacy also had the highest snap percentage among RBs this week at 60%. Stacy is not coming off the field in passing downs either, he led the team in routes run and passing situation snaps with 9 and 8 respectively. Stacy also touched the ball on every single one of this red zone and goal line snaps.

While his efficiency has dropped off, Stacy remains the lead back on this team and should produce every week.

### Backup: Terrence Magee

Magee started to see a lot more action this week after the Badie injury and dare I say he looked _pretty good_. Magee’s efficiency was not great on the ground, but he made people miss when he touched the ball. He also received some goal line and short yardage touches. I think if Badie were to miss time, Magee might be a good sleeper play as a direct backup to Stacy.

### Change of Pace: Sherman Badie

Sherman Badie had still yet to match his week 4 magic, but he did have a 56-yard reception before leaving the game fairly early. We will have to monitor and see how Badie does this week at practice. We can hope that he comes back and provides that explosiveness this offense has been missing almost all year.

<div>
  <h3 class="team-header atl-header">Atlanta Legends - Week 05</h3>
  <table class="rb-table nowrap stripe">
    <thead>
      <tr class="text-xs bg-blue-lightest">
        <th></th>
        <th colspan="2" class="border-l border-r border-grey-light">Boxscores</th>
        <th colspan="5" class="border-r border-grey-light">Usage</th>
        <th colspan="2" class="border-r border-grey-light">3rd Down</th>
        <th colspan="2" class="border-r border-grey-light">Red Zone</th>
        <th colspan="2" class="border-r border-grey-light">Goal Line / 2PT</th>
      </tr>
      <tr class="text-xs text-center">
        <th class="border-r border-grey-light">Name</th>
        <th>Rushing</th>
        <th class="border-r border-grey-light">Receiving</th>
        <th>Snaps</th>
        <th>Snap %</th>
        <th>Drives</th>
        <th>Routes</th>
        <th class="border-r border-grey-light">Touch %</th>
        <th>Snaps</th>
        <th class="border-r border-grey-light">Touches</th>
        <th>Snaps</th>
        <th class="border-r border-grey-light">Touches</th>
        <th>Snaps</th>
        <th>Touches</th>
      </tr>
    </thead>
    <tbody>
      {% for rb in site.data.rb_report[week_key] %}
        {% if rb.team == "ATL" %}
          <tr class="text-xs text-center">
            <td class="border-r border-grey-light">{{ rb.name }}</td>
            <td data-order="{{rb.carries}}">
              {{ rb.carries }} car<br/>
              {{ rb.yards }} yds<br/>
              {{ rb.tds }} TD, {{ rb.two_pt }} 2PT
            </td>
            <td data-order="{{rb.catches}}" class="border-r border-grey-light">
              {{ rb.catches }} rec / {{ rb.targets }} tar<br/>
              {{ rb.receiving_yards }} yds<br/>
              {{ rb.receiving_tds}} TD
            </td>
            <td>{{ rb.snap_count }}</td>
            <td>{{ rb.snap_percentage }}</td>
            <td>{{ rb.drives_played }}</td>
            <td>{{ rb.routes_ran }}</td>
            <td class="border-r border-grey-light">{{ rb.touch_percentage }}</td>
            <td>{{ rb.third_down_snaps }}</td>
            <td class="border-r border-grey-light">{{ rb.third_down_touches }}</td>
            <td>{{ rb.red_zone_snaps }}</td>
            <td class="border-r border-grey-light">{{ rb.red_zone_touches }}</td>
            <td>{{ rb.goal_line_2pt_snaps }}</td>
            <td>{{ rb.goal_line_2pt_touches }}</td>
          </tr>
        {% endif %}
      {% endfor %}
    </tbody>
  </table>
</div>

### Lead back: Tarean Folston

Folston is back and he looked like the Alvin Kamara of the AAF. He posted 83 yards and a touchdown on the ground and caught all 6 of his targets for 23 yards and a touchdown through the air. Folston also stepped up and played 44% of the snaps and was the go-to back in the red zone and definitely in passing situations. He is taken this Wadley role and ran away with it.

With all this usage and efficiency, Folston has moved back up to RB1 territory and is ascending along with this Atlanta offense under Aaron Murray.

### Early Down Rotational Back: Brandon Ratcliff

Radcliff did move ahead of Robinson in terms of snaps and usage, but his efficiency on the ground was down from last week. He carried the ball 11 times for 31 yards and was not useless in the passing game, as he ran 12 routes and caught all 3 of his targets for 16 yards. Radcliff seems to be the #2 back now and should be in line for about 8-12 touches each week which makes him an RB2.

### Rotational Backup: Denard Robinson

Robinson had a bad day as he fell to third in the depth chart with a 20% snap percentage and lost 6 yards on his only carry. He also only caught 1 of his 3 targets for 1 yard. He was used in some passing situations, but not enough to be excited about and he should not pass Folston in that phase of the game. Right now, it is really hard to get excited about Robinson with his current usage.

### Deep Backup: Lawrence Pittman

While Pittman was hurt and that was the reason for him being inactive, I don’t think he is a guy you want to bet on. He only played 5 snaps two weeks ago and has gotten phased out of this offense. Maybe he cuts into someone’s workload when he is healthy again, but it probably won’t be enough for you to strongly consider him as a reliable fantasy option.

### Injured: Akrum Wadley

Wadley hit the IR and has left fantasy owners dreaming of what could’ve been. I do not know if he will be able to return this season, but I would cut bait if you do not have a lot of space on your roster.

# Leaderboard - Through Week 05

<div>
  <h3 class="team-header aaf-header">Through Week 05 - All Running Backs</h3>
  <table id="rb-leaders" class="nowrap stripe">
    <thead>
      <tr class="text-xs bg-blue-lightest">
        <th></th>
        <th colspan="2" class="border-l border-r border-grey-light">Boxscores</th>
        <th colspan="4" class="border-r border-grey-light">Usage</th>
        <th colspan="2" class="border-r border-grey-light">3rd Down</th>
        <th colspan="2" class="border-r border-grey-light">Red Zone</th>
        <th colspan="2" class="border-r border-grey-light">Goal Line / 2PT</th>
      </tr>
      <tr class="text-xs text-center">
        <th class="border-r border-grey-light">Name</th>
        <th>Rushing</th>
        <th class="border-r border-grey-light">Receiving</th>
        <th>Snaps</th>
        <th>Snap %</th>
        <th>Routes</th>
        <th class="border-r border-grey-light">Touch %</th>
        <th>Snaps</th>
        <th class="border-r border-grey-light">Touches</th>
        <th>Snaps</th>
        <th class="border-r border-grey-light">Touches</th>
        <th>Snaps</th>
        <th>Touches</th>
      </tr>
    </thead>
    <tbody>
      {% assign total_key = week_key | append: "-totals" %}
      {% for rb in site.data.rb_report[total_key] %}
        <tr class="text-xs text-center">
          <td class="border-r border-grey-light">{{ rb.name }}</td>
          <td data-order="{{rb.carries}}">
            {{ rb.carries }} car<br/>
            {{ rb.yards }} yds<br/>
            {{ rb.tds }} TD, {{ rb.two_pt }} 2PT
          </td>
          <td data-order="{{rb.catches}}" class="border-r border-grey-light">
            {{ rb.catches }} rec / {{ rb.targets }} tar<br/>
            {{ rb.receiving_yards }} yds<br/>
            {{ rb.receiving_tds}} TD
          </td>
          <td>{{ rb.snap_count }}</td>
          <td>{{ rb.snap_percentage }}</td>
          <td>{{ rb.routes_ran }}</td>
          <td class="border-r border-grey-light">{{ rb.touch_percentage }}</td>
          <td>{{ rb.third_down_snaps }}</td>
          <td class="border-r border-grey-light">{{ rb.third_down_touches }}</td>
          <td>{{ rb.red_zone_snaps }}</td>
          <td class="border-r border-grey-light">{{ rb.red_zone_touches }}</td>
          <td>{{ rb.goal_line_2pt_snaps }}</td>
          <td>{{ rb.goal_line_2pt_touches }}</td>
        </tr>
      {% endfor %}
    </tbody>
  </table>
</div>

<script>
  $('.rb-table').DataTable({
    fixedColumns: true,
    scrollX: true,
    paging: false,
    searching: false,
    ordering: true,
    info: false,
    order: [[ 3, "desc"]]
  });

  $('#rb-leaders').DataTable({
    fixedColumns: true,
    scrollX: true,
    pageLength: 10,
    lengthChange: false,
    searching: false,
    ordering: true,
    info: false,
    order: [[ 3, "desc"]]
  });
</script>
