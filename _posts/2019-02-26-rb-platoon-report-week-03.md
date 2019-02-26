---
layout: post
title: RB Platoon Report - Week 03
nav: articles
author: Jackson Conner
twitter: AAFAnalysis
---

The weekly **_RB Platoon Report_** series goes beyond the boxscores and tries to decipher the backfield situation for every Alliance team. With many teams employing a committee approach, identifying the valuable contributors at the RB position could make or break your fantasy week.

_Note: all snap counts and routes run data comes from game film analysis and are unofficial._

{% assign week_key = "week-03" %}

<div>
  <h3 class="team-header ari-header">Arizona Hotshots - Through Week 03</h3>
  <table class="rb-table nowrap stripe">
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

**Leadback: Jhurell Pressley**

The boxscore does not tell the whole story, but the **#JhurellCow** movement hit its highest peak since week 1. Pressley had less statistical production than last week, but in this game, he regained control on the backfield and was unquestionably the lead back. The Stallions defense is currently the top run defense in the league, so Pressley’s inefficiencies were understandable. Pressley’s third-down usage was, once again, promising as he continues to dominate in that facet but hopefully, he can haul in more than one of his 4 targets next time.

It is important to recognize the fact that Pressley’s goal-line work could be cut down due to a drop in offensive production if QB John Wolford misses time. However, backup QB Trevor Knight provides more mobility than Wolford which might open up some running lanes. All-in-all, Pressley is just barely clinging onto his RB1 status. I think this the cheapest you will ever be able to get him on Fanball at \$5000.

**Bruiser: Tim Cook**

The “Tim Cook Week 2 Takeover” was a distant memory in this game as he only played 8 snaps and was stuffed on his only goal-line carry. It could have been game plan specific but no matter what it spells trouble for Cook. We know that Cook is not going to be involved in the passing game, so we need that carry volume for him to be even relevant. One thing that is positive, however, is that mobile QBs like Knight have led to success among power RBs like Cook. Still, without volume, he is an RB3/4. At \$3100 you can hope he gets goal-line work and can vulture a short TD but he is a scary, zero-floor play.

**Main backup: Justin Stockton**

It was good to see Stockton get a more work this week and take over as the main backup behind Pressley. Efficiency regression hit Stockton this week as he only averaged 2.6 yards a tote, but the 35% snap count was a season-high and a good reason to be optimistic. Although it was by pure chance, it is worth noting that Stockton saw the field for 7 red zone snaps which led the team. It seems like Stockton is finally getting rewarded for his good play and is molding into an RB2. At \$3400 he is a really good, cheap option.

**Gone: Larry Rose**

Unfortunately for all you avid Larry Rose fans, he was cut by Arizona.

<div>
  <h3 class="team-header orl-header">Orlando Apollos - Week 03</h3>
  <table class="rb-table nowrap stripe">
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

**Starter and Closer: D’Ernest Johnson**

I liked D'Ernest Johnson a lot in week 3 and he delivered. He took the role of lead back and ran with it posting a 13/79/1 line along with 2 catches for 18 yards. It was the second week in a row that Johnson ran it right down the opposing team’s throat to end the game, hence the “closer” label. Approximately 75% of his rushing yards have to be in the fourth quarter.

In the passing game, Johnson saw slightly more utilization than De'Veon Smith, but it was nothing to write home about. Still, Johnson's 55% snap percentage in this high powered offense keeps him in the RB1 territory. Orlando coach Steve Spurrier said after the game that Johnson played well enough for him to keep the starting job for week 4. I am still all for Johnson this week at \$5500.

**Direct Backup: De’Veon Smith**

Even though De'Veon Smith did not get his usual TD and 2pt conversion, it was nice to see him finally churn out some yardage. Smith’s snap percentage did not jump at all from week 2, in fact, it went down. But the increased carries are something to be happy about. Smith seems to kind of be locked into the role of a rotational guy who does it all on about 20 snaps a game.

Smith’s attachment to this offense and week-to-week TD upside is enough to warrant RB2 status, but he needs to keep producing on the ground to stay somewhat consistent. He is the best sub-\$4500 bet to score a TD this week.

**Change of Pace Back: Akeem Hunt**

“This game could not have gone much worse for the presumed lead back Akeem Hunt” was my lead sentence last week for Akeem Hunt. Things somehow got worse this week as he only played 5 snaps.

I think Hunt individually played better this week, but it is clear that this was not a one-week thing. Hunt is not the guy in Orlando. There is not much upside or stability here for Hunt as Johnson is the week 4 starter. Hunt should be avoided in DFS and is going to need an injury or huge production drop-off from Smith or Johnson to get back on the field. He's a RB3/4 bench stash in season-long.

<div>
  <h3 class="team-header bir-header">Birmingham Iron - Week 03</h3>
  <table class="rb-table nowrap stripe">
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

**Bellcow: Trent Richardson**

Trenton J Richardson is an AAF wonder. Yet another game with 70%+ of the snaps and elite usage in all facets of the game. If his YPC ever creeps up to just 3.5, watch out! The passing game usage was on par again as Richardson ran 18 routes and received 5 targets. The 7 red zone touches and the 4 goal-line touches led to 3 more TDs and fantasy owners could not be happier.

Richardson now has received a carry or target on 10 of 13 goal line snaps and 18 of his 24 red zone snaps. With this kind of usage, Richardson will not stop this TD tear. He is unquestionably the top RB in season long plays and not absurdly priced at \$7600 on Fanball.

**Change of Pace: LaDarius Perkins**

Perkins has not inspired much confidence after his week 1 passing game explosion. It will be interesting to see the usage if Birmingham ever gets down big in a game. Richardson’s usage in the passing game has really destroyed Perkins value, as the backup RB did not even get a target on his 4 routes run. Perkins is an RB3 for now and just does not make much sense at \$3700 on Fanball.

**Deep backup: Ty Isaac**

Ty Isaac seems to play the last series before half time and dip out for most of the game. I'm betting he would be the preferred back in hurry up situations as he got a target and recorded 3 routes run in only 5 snaps. He is unplayable in season long and on Fanball.

<div>
  <h3 class="team-header sa-header">San Antonio Commanders - Week 03</h3>
  <table class="rb-table nowrap stripe">
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

**Lead Back: Kenneth Farrow**

I thought Kenneth Farrow was one of the best RB plays on the board last week, but he really disappointed. His snap share was fine at 44%, but he lost a lot of work in the second half to phenom RB Trey Williams. The main problem with Farrow this game was his lackluster 3.0 YPC and only catching one ball for -5 yards. Farrow still is a decent bet week-to-week for a TD as he played 6 red zone snaps, which led the team.

One thing to monitor is Trey Williams, who outperformed Farrow in his first game of the season and could be a threat for the starting job. Farrow is a low-end RB1 for now, drifting into RB2 territory, but there are worse plays on the board at \$5200 on Fanball this week.

**Change of Pace/Scat back: Trey Williams**

Ahh, this was so refreshing! Trey Williams was my highest touted play because he provided so much upside at the \$3000 min-price. He came through with almost 11 points and paid off his price tag. The 10.7 yards per carry will come down but that is okay as long as he can get some more volume. Williams’ 11 routes run was impressive and a sign that he will be a force in that facet of the game. I expect Williams to get an increase in play because he deserved it and that will make him a RB2. At \$4100, I love him again this week on Fanball.

**Backup: David Cobb**

I was frustrated with all the David Cobb usage in the first half, but Cobb did not play at all in the second half. Trey Williams looks like he took over his role as the game went on. Cobb has not played poorly this season but has never really seen consistent usage for the Commanders. Right now Cobb is an uninspiring RB3 and not someone I would target at, even at \$3200.

**Inactive: Aaron Green**

Trey Williams cutting into people’s jobs seems to be a common theme for San Antonio. Green was actually inactive after having an inefficient outing against the Apollos. This came as a bit of a surprise as I figured it would be Cobb that was inactive to make room for Williams.

I am not sure if this is going to be consistent thing but it was definitely not promising for #FreeAaronGreen truthers. Green is still averaging 5.2 YPC so I would expect him to get some kind of an opportunity. Right now, I think he is probably unplayable if Trey Williams remains in the lineup.

<div>
  <h3 class="team-header sl-header">Salt Lake Stallions - Week 03</h3>
  <table class="rb-table nowrap stripe">
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

**Lead Back: Branden Oliver**

It is great to finally put “lead back” next to Oliver’s name as his usage has warranted it. Logging over 50% of the snaps and 15 carries definitely qualifies him for the designation. The one thing that is worrisome is that Oliver’s efficiency has continued to fall. His touch counts have gone up but the efficiency has been lacking.

The other thing that was a big positive with Oliver was the usage in the red zone. I pointed out on [Twitter](https:/twitter.com/aafanalysis) that the Stallions have been running like crazy in the red zone and it is translating to RB touchdowns. Both Bouagnon and Oliver scored, but Oliver did out snap and out touch him in the red zone (6-4). Overall, I believe Oliver's efficiency will go up and solidify him as the back to own in Salt Lake. Oliver continues to be a good value for his expected usage on Fanball at \$5300.

**Rotational Early Down Back: Joel Bouagnon**

Bouagnon is still getting ample carries but his snap share compared to Oliver keeps decreasing. So far Oliver has won the job but in the AAF everything is always subject to change and we could see the roles flip.

“Bwon-Yo” did lead the team in third down snaps (8) and received a touch or a target on (6) of those downs. As pointed out above, the Stallions continue to pound the rock in the red zone and that has been a major key in Bouagnon’s week-to-week upside. I think we are looking at a weekly high-end RB2. Bouagnon is priced fairly at $5400 but I would still rather play Oliver for $100 less.

**Deep Backup: Terrell Newby**

Newby was a guy that I thought could see a boost in production this week, but was still wary of based on what we knew Bouganon and Oliver would receive on the ground. While Newby saw a slight boost in production, it was not noteworthy and his snap count actually went down. Last week he was intriguing due to all the third downs played and the routes ran, but this week he only played 2 third downs and ran 4 routes. Without passing game work to add to his game, he is just a RB3/4 in a full backfield. I would not get cute on Fanball at \$3100.

**Former Goalline Back: Matt Asiata**

Yikes again, Asiata was a game-time scratch after practicing in full on Friday. While Asiata never really played much this season, he recorded some drops and a costly red zone fumble. After this healthy scratch, he is droppable in season-long and unplayable in DFS. I would not be surprised if Asiata gets cut.

<div>
  <h3 class="team-header sd-header">San Diego Fleet - Week 03</h3>
  <table class="rb-table nowrap stripe">
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

**Rotational Back (starter): Ja’Quan Gardner**

The Ja’Quan Gardner domination tour continues as he averages over 10 YPC again, helped out by an 83 yard TD scamper in the third quarter. Gardner continues to be the best back in the AAF efficiency wise, but is still not even the leading back on his own team! However, Gardner played some more third downs in this game and was more involved in the passing game.

I still believe that TD and YPC regression is coming: Gardner can not sustain his 8.0 YPC average and Watson is dominating snaps and touches in the red zone as part of the rotation. In order to keep up this pace as an elite RB1, Gardner has to start seeing more volume, particularly inside the 20. For now, he is still an RB1 due to a lack of bell cows in this league, but I am fading him at steep \$7000 price on Fanball.

**Pass Blocking Power Back: Terrell Watson**

The untold story in another Gardner domination was that Terrell Watson is still playing more snaps. I believe that Watson has earned more recognition this week as he recorded 76 total yards and two 2pt conversions. The only issue for Watson owners would be if Gardner's third down usage rises. However, this backfield is one of the more clearly defined and Watson looks to be a solid/high-end RB2 due to sizable volume and TD upside. One of my favorite plays at \$4900 on Fanball as he has a chance to get a TD and/or 2pt conversion every week.

**Inactive: Paul James**

James was inactive and droppable / unplayable.

<div>
  <h3 class="team-header mem-header">Memphis Express - Week 03</h3>
  <table class="rb-table nowrap stripe">
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

**Lead back: Zac Stacy**

The YPC was not favorable for Zac Stacy but the snap percentage could have been a lot worse. Logging a 51% snap percentage and a 58% touch percentage, Stacy still warrants the lead back label, but we have to be a little more cautious than we previously thought. During the second half, Stacy did only play 7 of his 28 total snaps and was out-snapped by newcomer Sherman Badie. Stacy did see 5 targets, but that is probably his ceiling in terms of passing game usage. Going into week 3, Stacy looked like a rock solid RB1 but his floor is lowering. Stacy is in a tough spot on Fanball: you are probably paying up for Richardson or paying down for better options in the \$5000 range.

**Backup: Terrence Magee**

Earlier in the week, there was some chatter that Magee had been cut, but it turned out to be a false alarm. But Magee may lose his already low-value role, though, as Badie came out of nowhere and provided some juice.

One thing that is interesting about Magee’s usage is that he gets subbed in and out a lot. He never played more than three snaps in a row and was usually subbed in on 2nd or 3rd downs. When that is the case, it is hard to build consistent volume. Magee is an uninspiring RB3 right now and I would not play him in Fanball at \$3400.

**Ultra Spark Plug: Sherman Badie**

Not just a normal spark plug, Sherman Badie came in and performed like an **ultra spark plug** against the Apollos, averaging 7.4 YPC after being signed to the roster days earlier. This kid is fast -- he recorded a 4.39 40 time during Tulane’s pro day -- and it showed on the field.

With 12 snaps, you can’t lock anything in stone but Badie did receive 10 of those in the second half (which led the team). I think Badie could offset Magee as the main backup and play a complementary role beside Stacy. He is very risky but can be approached as a low-end RB2 rest of season. The downside is that Badie is more pricey in DFS but I still would not mind paying \$4500 for him based on what we saw in week 3.

<div>
  <h3 class="team-header atl-header">Atlanta Legends - Week 03</h3>
  <table class="rb-table nowrap stripe">
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

**Lead/3rd down back: Akrum Wadley**

Akrum Wadley got off to another great start in this week 3. Wadley was on the field a ton in the first half and was very involved in the passing game. Unfortunately, Wadley hurt his knee with late in the second quarter and did not return. Wadley looked like he was in a groove and was on pace to run another 20 routes and catch 6 passes before the injury derailed him. If Wadley is able to return he is a high end RB2. Not sure if he plays but 4.3k is a great price for him if he does play.

**Rotational Early Down Back: Lawrence Pittman**

Pittman was one of my favorite plays this week, but he did not come through at all. Pittman could have seen tons of action in the second half if he did not fumble the ball on the first play of the half. You win some you lose some, but Pittman has to be one the biggest losers at the RB position in Sunday's games as he squandered a big opportunity.

One positive though is that Pittman saw 2 goal line carries and finally recorded some usage in the passing game. Even if Wadley is hurt going forward, it will be hard for Pittman to reach RB2 territory. Pittman is a middling option as of now at \$3500.

**Rotational Back: Denard Robinson**

I did not tune in to watch the Denard Robinson backfield, but that is unfortunately what I got in the second half. If there are any Robinson owners out there you would have liked him to record some more production as 5 total yards does not move the needle, but the snap share was promising.

Robinson is going to be involved in the passing game as he drew 3 targets but more impressively ran 16 routes and played 9 third downs. Robinson always dropped a wide-open TD catch in the back of the end zone. The 10 red zone snaps will most likely go down, but it is encouraging that they are not shying away from him there.

If Wadley is forced to miss more time, Robinson could be an RB2. If Wadley is active, Robinson could end up scratched. Robinson is an ugly but serviceable option at the moment for \$3200 as he should receive enough work to pay off his price.

**Inactive: Tarean Folston**

A surprise inactive, Folston missed a good opportunity to retake the job. Looking forward, if Wadley is still sidelined, Folston could return to the lead back role, but it would not be surprising if he was also inactive next week. We will have to wait and see on him. If Wadley does not play and Folston does, he could receive enough volume to pay off his \$3200 price tag.

# Leaderboard - Through Week 03

<div>
  <h3 class="team-header aaf-header">Through Week 03 - All Running Backs</h3>
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
      {% for rb in site.data.rb_report["week-02"] %}
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
