---
layout: post
title: RB Platoon Report - Week 04
nav: articles
author: Jackson Conner
twitter: AAFAnalysis
---

The weekly **_RB Platoon Report_** series goes beyond the boxscores and tries to decipher the backfield situation for every Alliance team. With many teams employing a committee approach, identifying the valuable contributors at the RB position could make or break your fantasy week.

_Note: all snap counts and routes run data comes from game film analysis and are unofficial._

{% assign week_key = "week-04" %}

<div>
  <h3 class="team-header ari-header">Arizona Hotshots - Through Week 04</h3>
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

### Leadback: Jhurell Pressley

This was an unbelievable week for Pressley efficiency wise and it could have been bigger production wise if this offense was clicking. Pressley averaged 8 YPC and caught 4 balls en route to the top week 4 RB performance. His usage in the passing game was encouraging, but not a huge fan of him at \$6900 in a much harder matchup. In season long, he is still an elite RB1 and closing in on #JhurellCow status.

### Bruiser: Tim Cook

Cook continues to show that he was a one week wonder as he played one drive and recorded 10 total yards. The 11% and 13% snap percentage in back-to-back games don’t inspire confidence and I would deem him basically unplayable in season long. On Fanball he is a mere dart throw at \$3100.

### Main backup: Justin Stockton

I expected Stockton to be involved and to put up more than 14 total yards. Stockton’s 30% snap percentage was around his season total but his touch percentage and efficiency was down. With only 4 routes ran, he doesn’t provide much upside in that facet of the game either. He’s still a RB2/3 in season long, but comes with a little value at \$3200 this week in DFS still.

<div>
  <h3 class="team-header orl-header">Orlando Apollos - Week 04</h3>
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

### Starter and Closer: D’Ernest Johnson

Ugh, I just wanted one guy to step forward and take this backfield but Spurrier wanted to keep us in the dark I guess. Johnson still played the most the snaps, but it was only 37% of the total and his touch percentage was a measly 31%. He ran the most routes and got the most targets but he did not separate from the other backs.

It will be interesting to see if Johnson holds onto his starting role as he performed worse than both the other RBs in week 4. Right now, Johnson is a high end RB2 and looks to be a committee back once more. In my opinion, he is still the preferred play of this backfield on Fanball at \$5000.

### Direct Backup: De’Veon Smith

Smith has started to rack up more yards over the past few weeks, but he has not scored at all after notching TD in weeks 1 and 2. Smith has not played poorly, but I just don’t see them handing him the keys. The passing game usage still is not there and does not seem to be an a lock on goal line work anymore. He is a middle-of-the-road RB2 with TD upside in season long.

### Change of Pace Back: Akeem Hunt

Akeem Hunt broke back onto the scene and had his most utilization since week 1. He averaged 4.4 YPC and turned his only target into 19 yards. I’m not sure what Hunt ever did to get relegated to 3rd string but his possible re-emergence could spell tons of problems for this backfield from a fantasy perspective.

Hunt remains a highly volatile RB2/3 option in season long and DFS at \$5100 but comes with upside in this offense -- Hunt could suddenly go back to 5 snaps and completely bust.

<div>
  <h3 class="team-header bir-header">Birmingham Iron - Week 04</h3>
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

### Bellcow: Trent Richardson

While Richardson recorded great usage again this week it was not the typical 70% we have grown accustomed to seeing from him. The addition of Brandon Ross really cut into his work on the ground and he almost did not even score a TD.

One thing that remained solid though was that Richardson ran a league high 25 routes and received another league high 8 targets. Even though the Iron were not in the red zone often, he still dominated those opportunities and touches. With all that built-in usage and TD upside, he is still the top RB in season long.

From a DFS perspective, he is still a safe play due to his passing game floor but the loss of carries makes me think he is not the lock he once was.

### Change of Pace: LaDarius Perkins

Perkins did not see a lot of snaps, but he was used when he was on the field. On the last drive before halftime, Perez checked down to Perkins over and over again. Despite posting 4 catches, I just don’t see where his production is going to come from with just 8 snaps. Ross looked more effective as a runner and will probably take over the main backup role. He’s too risky to play in DFS or season long.

### Backup: Brandon Ross

Brandon Ross finally got some playing time and he never looked back. He proved that this offensive line isn’t the only issue as he rushed for 7.1 YPC against this fairly stout San Antonio front. Ross played 31% of the snaps and even recorded more carries than Richardson. He’s not useless in the passing game but don’t expect much more than 2 or so catches a game from him.

Whether Ross will keep his 30% snap share remains to be seen, but he is a low end RB2 for now.

### Deep backup: Ty Isaac

Isaac did not receive a snap and barring an injury probably won’t see the field. Droppable in season long and unplayable in DFS.

<div>
  <h3 class="team-header sa-header">San Antonio Commanders - Week 04</h3>
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

### Lead Back: Kenneth Farrow

Woah! Farrow exploded this week to tune of 145 total yards on a whopping 32 carries/targets. Farrow even maintained a 4.7 YPC against a good defense with all that volume. I thought Trey Williams would really threaten Farrow, but Farrow’s league high 74% snap percentage speaks for itself.

Farrow did not get a touchdown, but received 11 red zone touches and 5 goal line touches so he is a prime candidate for some TD regression. Also despite Trey Williams pass catching prowess Farrow still played 9 third downs to Williams’ 4. Farrow establishes himself as an elite RB1 and is still a good play this week at \$6700.

### Change of Pace/Scat back: Trey Williams

As the biggest Trey Williams truther I was encouraged by the TD, but was encouraged by him playing only a quarter of the snaps. He did not offer much in the passing game and that is problematic as he will not score nearly every week. While David Cobb was phased out, it seemed like everything went to Farrow and not Williams.

Williams still looks good on tape however and I expect him to get more of an opportunity in the coming weeks. He’s an RB2 in season long and will continue to be a fine Fanball play at \$4300.

### Deep Backup: David Cobb

Cobb was active but he only received one carry and snap. Cobb was never really a fantasy option, but he definitely is completely out of consideration now with that usage. Droppable in season long and unplayable in DFS.

### Inactive: Aaron Green

Green was inactive again, but with Cobb only playing 1 snap maybe he sees another chance. I’m not a Green hater but I hope that chance doesn’t come at the expense of Williams.

<div>
  <h3 class="team-header sl-header">Salt Lake Stallions - Week 04</h3>
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

### Lead Back: Branden Oliver

Oliver’s injury came at an inopportune time as he was seizing control of this backfield. Before his injury, Oliver played 28 of the 35 backfield snaps and commanded a huge workload. It was an unluck turn of events and Oliver’s injury is among the top to monitor.

I will provide more injury updates during the week, but if Oliver plays he is an RB1 and isn’t a terrible play at \$6400.

### Backup: Joel Bouagnon

Bouagnon’s usage pre-Oliver injury was really bizarre and troublesome (only one snap!), but he was the primary ball carrier after the injury.

If Oliver doesn’t play Bouagnon becomes interesting at \$5300, but if Oliver does play Bouagnon is much less appealing. In season long he’s an RB1 without Oliver and a RB2/3 with Oliver.

### Pass-catching Backup: Terrell Newby

Newby just seems to be along for the ride and will never be fantasy viable. He runs a decent amount of routes and plays on third downs, but is just really difficult to play with a season touch percentage total of only 11%.

<div>
  <h3 class="team-header sd-header">San Diego Fleet - Week 04</h3>
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

### Rotational Back (starter): Ja’Quan Gardner

We knew this day was coming: Gardner did not have the usage to support the type of production he was putting up. That said, I did not expect Gardner to put up this bad of numbers. His snap percentage was actually up a little bit this game as he hit 49%.

He has an unremarkable passing opportunity as 13 routes run is about middle of the pack for starters. I still think Gardner should be viewed as a RB1 this week and he’s not a bad option in Fanball at a discounted price.

### Pass Blocking Power Back: Terrell Watson

This was the game we needed Watson to step up and claim the lead role, but he posted normal Watson-esque numbers and ran a 2pt conversion instead of a TD. Watson ran 14 routes but did not see a target.

Watson still had a lead on 3rd Down snaps but Gardner actually passed him up in red zone snaps. This is really bad for Watson’s week-to-week upside, but Gardner has been playing well down there.

The activation of Bishop Sankey also his bad news for Watson as Sankey will cut into his snaps more than Gardner. Watson is more of a RB2/3 this week and one I would avoid in DFS until we see how the backfield plays out.

### Waived: Paul James

Paul James was waived to make room for Bishop Sankey. Drop him.

### New Face: Bishop Sankey

Sankey was activated from IR, but it remains to be seen how big of a workload he will garner. I believe he will cut into Watson’s snap share and become a decent play week-to-week.

Sankey possesses upside based on his NFL pedigree, but is still a high risk play in season long and DFS. Low ownership and \$3000 min price make him much more appealing in DFS however.

<div>
  <h3 class="team-header mem-header">Memphis Express - Week 04</h3>
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

### Lead back: Zac Stacy

This is the second week in a row that Stacy has posted high usage and poor efficiency. It’s getting to the point where he might start losing work. However, he still posted a 60% snap percentage, which was the second highest, and got 20 touches. Stacy is also the preferred back in the red zone.

This Memphis offense is starting to click and with Stacy’s usage he remains one of the safer RB1s, he just needs to start producing more efficiency. This week he is a great bounce back play in DFS against the Swiss cheese Atlanta front that is oozing RB points.

### Change of Pace: Sherman Badie

Badie still looks explosive, but failed to produce last week as he only posted 27 total yards. I like his talent and I expect him to settle around 35% snap share which is probably good enough for a low end RB2. Badie only ran 9 routes, but could see more usage in a different game script.

This week, Atlanta is a great matchup for RBs so Badie is not a terrible play hovering in that mid \$4K price range.

### Backup: Terrence Magee

Magee fell to third on the depth chart, but did catch a TD to salvage his fantasy day. I would not count on that every week as he only had 2 red zone snaps. Magee was never really too fantasy relevant and is in an even worse position now. RB3 in season long and not in my DFS consideration.

<div>
  <h3 class="team-header atl-header">Atlanta Legends - Week 04</h3>
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

### Rotational Back: Denard Robinson

Robinson seemed to be the do-it-all back as he recorded 9 carries and ran 8 routes. He was also the most involved in the red zone. Like the rest of the offense, Robinson was surprisingly efficient. I expect Robinson to hover anywhere in between 30-40% of the snaps with Wadley out.

When Wadley comes back he should still see some type of role even if it is less significant. He is an RB2 for now and not a bad cheap option in DFS, it is really a preference choice between him and Folston.

### Third down back: Tarean Folston

Folston was back and this past week was his most effective one yet. His usage in the air was what stood out as he ran 18 routes and caught 5 of his 7 targets for 66 yards. Folston also played 11 third down snaps.

Under new offensive coordinator Ken Zampese, Folston was a main point of this quick offense and should continue to see RB2 numbers with Wadley out. In DFS, Folston is not a bad cheap option if you are trying to cram some top end guys in your lineup.

### Early Down Rotational: Brandon Ratcliff

Radcliff was the new addition to this backfield and he performed decently on the ground posting a 12/48 line on the ground. Radcliff’s role seems limited as he played a bit on early downs and sometimes in the red zone, but that’s it. He did not even record 1 third down snap in a game where the Legends had 15 third down plays. He is a low end RB2 who has to score to hit.

### Deep Backup: Lawrence Pittman

Pittman squandered his chance at major role in this backfield when he fumbled in week 3. He only recorded 5 snaps and 1 goal line touch. Maybe he sneaks into the end zone, but with that usage it is clear that he is the odd man out. There is a high chance he is inactive and might even be cut if Wadley returns soon. He is a low RB3 in season long and not a preferable play in DFS.

# Leaderboard - Through Week 04

<div>
  <h3 class="team-header aaf-header">Through Week 04 - All Running Backs</h3>
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
