---
layout: post
title: RB Platoon Report - Week 02
nav: articles
author: Jackson Conner
twitter: AAFAnalysis
---

The weekly **_RB Platoon Report_** series goes beyond the boxscores and tries to decipher the backfield situation for every Alliance team. With many teams employing a committee approach, identifying the valuable contributors at the RB position could make or break your fantasy week.

_Note: all snap counts and routes run data comes from game film analysis and are unofficial. All data is Through Week 02 for the season._

{% assign week_key = "week-02" %}

<div>
  <h3 class="team-header ari-header">Arizona Hotshots - Through Week 02</h3>
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

The emergence of Tim Cook was not a good thing for [#JhurellCow](https://twitter.com/search?q=%23JhurellCow) truthers as Tim Cook ate into Pressley's snaps and carries. Pressley’s snap percentage lowered to 47% and he had a scary low 39% of the touches out of the backfield. To make matters worse he was pulled for Tim Cook at the goal-line after he could not punch it in. He led the team in 3rd down snaps by a wide margin, but no targets is a cause for concern. Being the “leadback” on a prolific offense is still going to propel him to RB1 standards but the gap between him and Trenton J Richardson is increasing. Pressley has massive upside in week three in DFS at only \$5400 on Fanball as a huge leverage play over Richardson.

**Bruiser: Tim Cook**

Well, no one saw him coming! But Tim Cook was a pleasant surprise for the Hotshots as he provided a much-needed consistent run game. Logging 35% of the snaps and 45% of the touches, Cook could prove to be a solid RB2. However, Stockton and Rose could start eating up playing time and unless he overtakes Pressley, he will have trouble finding that RB1 territory. Next week Cook could be an enticing, cheap DFS play despite the tough match-up.

**Backup: Larry Rose**

Whelp, Rose was a surprise inactive and it could not have gone worse for his prospects of moving up the depth chart. All three RBs recorded 4.8 or above YPCs and made big plays on the ground. After not much usage or efficiency in week one, it would not be surprising to see him as inactive again in week 3. Rose is unplayable in both season-long and DFS until further notice.

**High-energy backup: Justin Stockton**

With Larry Rose inactive, all signs pointed to Justin Stockton getting a sizeable amount of work versus the Express. But Tim Cook came in and messed up everything. Stockton does currently boast the best YPC among RBs in the AAF but his touch count is very low. Only playing 18% of snaps and running 4 routes will not result in great fantasy success. He has run so well though he probably has pushed Larry Rose to the bench and his ties to this offense will keep him relevant. Stockton is a bench-stash RB3 and a "plug-and-pray" DFS flier at \$3300.

<div>
  <h3 class="team-header orl-header">Orlando Apollos - Through Week 02</h3>
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

**Rotational Back (starter): Akeem Hunt**

This game could not have gone much worse for [presumed lead back Akeem Hunt](https://twitter.com/NoExtraPoints/status/1097270106625843202). He was last among the Orlando RBs in snaps, touches, yards, and fantasy points. The only positive thing is that he is still the starter. His play was not stellar, although he did have a nice reception where he almost scored. You should not overreact to one week -- especially one where Orlando did not really attempt to rush until their final drive -- but it is hard when we only have two weeks to go off of. Hunt is an RB2 for now but could be an enticing, under-owned DFS play next week in what figures to be a great game script against Memphis next week. The upside is there for Hunt in this offense, but four total touches is not going to get it done.

**Rotational Grinder : De’Veon Smith**

Through two games, De'Veon Smith has a nose for that end zone. Smith scored his second TD and 2pt conversion in week two. Smith did lead the Apollos' backfield in snaps, but Smith and Hunt each played about an even amount of series. However, the only mid-drive RB rotation did come when Smith was subbed in for Hunt at the goal-line which bodes well for his TD upside going forward.

Smith has also shown he is very versatile: running with power and catching passes outside. Despite the versatility, Smith has not necessarily been able to pile up the yards and remains a TD dependent RB2. He is a decent, cheap DFS play in a game next week where he has a good chance to score.

**Rotational Back: D’Ernest Johnson**

Johnson played very well on Sunday and it translated to the boxscore in his efficiency. Johnson played the closer role very well and averaged 7.1 YPC when the Commanders knew what was coming on most of those carries. Johnson ran 8 routes and his only target was broken up. With not a huge amount of usage in a low volume, pass-first offense you have to hope for an uptick in volume next week in a favorable match-up. He is an RB2 and a good tournament play in DFS at \$4800.

<div>
  <h3 class="team-header bir-header">Birmingham Iron - Through Week 02</h3>
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

More of the same from Richardson this week. Volume upon volume with little efficiency. However, a surprising turn of events saw Richardson incredibly involved as a pass-catcher. All his routes ran finally turned into targets and he put up 6 catches for 50 yards through the air. Richardson still played all the snaps in the red zone and at the goal-line. With Perkins not taking all Richardson’s third down snaps, he is somehow an even more appealing elite RB1 and in an absolute smash spot next week on DFS despite presumably absurd ownership. It's not pretty but [Trenton J Richardson](https://twitter.com/search?q=Trenton%20J%20Richardson&src=typd) is your clear-cut top AAF RB.

**Change of Pace: LaDarius Perkins**

Perkins can no longer be called a 3rd down back as Richardson dominated the 3rd down snaps and he even lost some to Ty Isaac. He did have 2 catches for 5 yards but did not even record a carry. Without his third down role and a 16% snap percentage it is going to be tough to play Perkins as anything more than a RB3. He is just a punt play on DFS -- Perkins 6 catch week one outburst may have been only an illusion.

**Deep backup: Ty Isaac**

Isaac (inactive week one) played only eight snaps but did record a carry and 3 targets. Isaac looked to be somewhat viable as a pass-catching option for the Iron as he ran 5 routes on only 8 snaps, but he will be hard pressed to pass Perkins for that role. Not much TD upside with Richardson so he really should not be considered for season long or DFS.

<div>
  <h3 class="team-header sa-header">San Antonio Commanders - Through Week 02</h3>
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

All questions about whether Kenneth Farrow would be more effective and/or remain the starter were answered this week as he led the team in touches, snaps, RZ snaps, GL/2pt snaps, and 3rd down snaps. He had double the amount of RZ snaps as any other back and recorded over half of the 3rd down snaps. His efficiency was good as well as he rushed for 5.7 YPC and caught both of his targets for 25 yards. He looks like the starter going forward and a sure-fire RB1 in league without many consistent options. In DFS, Farrow in his own price tier and is a bet on volume option at \$6400 against a stingy San Diego run defense who held Farrow to 14 carries for 37 yards in the season opener.

**Change of Pace: Aaron Green**

Aaron Green did end up seeing more work this week, but it came more out of David Cobb’s load than Farrow. He flashed some passing game potential with a ginormous 20 routes run and a respectable 5 targets. He was outdone by Farrow from a production standpoint, but Green's snap percentage was not too far off. Green is an RB2 in week three and a cost-efficient DFS play at \$4100.

**Backup: David Cobb**

Cobb took a backseat to Aaron Green this week (after out-snapping Green in week one) and it showed in the boxscore. Cobb was only able to turn his 7 carries into 17 yards and did not receive a target. Cobb is a bigger back and he did see some work at the goal-line but was not able to cash in. He is a TD-or-bust RB3, but at his \$3400 price on Fanball -- he has at least the possibility of vulturing a short TD.

<div>
  <h3 class="team-header sl-header">Salt Lake Stallions - Through Week 02</h3>
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

**Rotational Early Down Back: Branden Oliver**

Some of us were wishing for Oliver to get more work this week as he outplayed Bouagnon in week one, despite the lower volume. The Stallions listened and Oliver received 14 carries and the top snap share among Stallion backs. Oliver's efficiency took a slight dip (5.0 YPC to 4.2 YPC) and his upside is capped by the lackluster Salt Lake offense. Oliver saw most of his snaps on early downs in week two. He is a low-end RB1/high-end 2 and is one of my favorite DFS plays for \$4500 on a tightly priced week three slate.

**Rotational Early Down Back: Joel Bouagnon**

After an inefficient effort against the Hotshots in week one, Joel Bouagnon ([BWON-YO!](https://twitter.com/evansilva/status/1096595870039068672)) returned with 6.4 YPC and a touchdown against the dreaded “Iron Curtain.” However, Bouagnon did slip behind Oliver in the pecking order in terms of snap. Terrell Newby was also active and ate into Bouagnon's snaps. With only four routes ran, he has to hope this team stays ground-heavy next week to maintain low-end RB1/high-end RB2 production. It remains to be seen what the Salt Lake offense with look like if QB Josh Woodrum is able to play. In DFS, I would prefer Oliver at a \$1000 savings and presumably less ownership from boxscore chasers.

**Third Down Back: Terrell Newby**

The “Newbie” in this established RB committee this week was no other than Terrell Newby. Newby looked relegated to a third down role: he played the most 3rd down snaps and ran the most routes, by far, with 14. At Nebraska, Newby caught 18 and 24 balls in his final two seasons and should see more targets in what figures to be a great game script for him next week against Arizona. The 14 routes run are enticing but he can’t be trusted as anything more than a RB3 next week. He is stone-min \$3000 in DFS, but provides almost no upside at all with only 2 carries.

**Former Goalline Back: Matt Asiata**

Yikes. Matt Asiata fumbled a goal-line carry early and was, for all intents and purposes, benched after that. He received only 5 snaps, 2 carries, and did not record a target. Basically, with that usage he is an RB4 in season long and a minimum price "pray for a miracle 1 yard TD" DFS play.

<div>
  <h3 class="team-header sd-header">San Diego Fleet - Through Week 02</h3>
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

**Early Down Back: Ja’Quan Gardner**

This was the Ja’Quan Gardner breakout week and it is clear that he is one of the best RBs in the AAF talent wise. However, Terrell Watson’s increased usage was a cause for concern -- we may be looking at a #FakeBellcow. Gardner played only three red zone snaps and one third down snap, ceding that usage to Terrell Watson.

However, it is worth noting that both of Gardners carries in the red zone went for TDs. If he can sustain his volume on the ground, he should be able to be an RB1 as talent and volume rises to the top, but is not yet in that elite tier. He is a player I would limit exposure to in DFS this week at \$7000, in a bad presumed game script.

**3rd Down Back: Terrell Watson**

In one of the biggest surprises to me this week, Terrell Watson recorded the second highest snap count of any RB in the league. While he did not receive a target, he ran 12 routes and played 12 out of 13 3rd down snaps for the Fleet. My hunch is that he was put in primarily for his pass blocking. While Gardner scored twice, Watson recorded significantly more usage in the red zone -- which should translate to some more TDs in the coming weeks. He is an RB2 based on snap percentage and volume on the ground and should be pretty under-owned in a pass-heavy script this week at \$4700 on Fanball.

**Deep Backup: Paul James**

After playing 21 snaps last week, James did not even record a single snap this week. Watson completely overtook his third down role and left James in the dust. After a big ol’ goose egg this week, James is unplayable in season long and DFS.

<div>
  <h3 class="team-header mem-header">Memphis Express - Through Week 02</h3>
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

Zac Stacy confirmed his lead back status with an impressive performance against the Hotshots on Saturday night. Arizona knew Memphis was going to run the ball with Stacy and yet he still succeeded. Granted a lot of his production came on one 50 yard run, but you can’t discredit 19 carries. For the second week in a row, he looked more fluid as runner than any other Memphis back by far. He did not play a ton of 3rd downs but was the most involved in the red zone and that led to the first TD for Memphis on the season. With 19 carries, Stacy is locked and loaded as a RB1 but in a tough spot in DFS as a heavy road dog priced at \$7100 for the most one-dimensional offense in the league.

**Third down role: Terrence Magee**

More of the same for Magee this week: he played around 30% of the snaps and averaged about 3 YPC with low volume. However, Magee did take over Neal’s role as the third down back, leading the team in routes run and third down snaps. That said, Magee did only see only target and his 6 carries on the ground are not going to make up for that. A low-floor, low-ceiling, situational RB on a road dog, Magee is a RB3 next week and an unattractive DFS play despite a cheap price.

**Backup: Raijon Neal**

Well, Neal was stripped of his third down role for poor performance and only saw 5 carries and 1 target. His 11 snaps played do not inspire confidence that those numbers will grow. Without a role on a stagnant offense Neal provides no hope as a RB3/4 and no upside or safety in DFS even at a minimum \$3000.

<div>
  <h3 class="team-header atl-header">Atlanta Legends - Through Week 02</h3>
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

**Rotational Early Down Back: Tarean Folston**

Another potential bellcow dream was crushed as we thought Folston would even expand his role without Denard Robinson, but Akrum Wadley came and thrived in the vacant third down role. Folston went from 20 routes ran to one and 7 third down snaps to zero. His carries were also cut in half in what should have been a more run friendly game script. Folston suffers a severe drop from solid RB1 to a RB3 this week. From a DFS aspect, he is a dirt cheap and comes with upside to take his job back, but a scary low floor.

**Lead/3rd down back: Akrum Wadley**

Wadley was a pleasant surprise for a putrid Legends offense, playing 60% of the snaps and catching all 8 of his targets for 70 yards. The usage on the ground was less than spectacular, but Wadley still managed to lead the team in total offense. Wadley's 8 targets, 8 receptions, 70 receiving yards, and 21 routes run were tops among all RBs in the AAF and he was second in the league with 11 third down snaps. This was elite passing game usage and cements him as a low-end RB1 next week. Atlanta looks like they will be in pass friendly game scripts in every game this season as they struggle to score and keep opponents off the scoreboard. In DFS, he is one of my favorite cash game plays at only \$4300 on a tightly priced slate.

**Rotational Early Down Back: Lawrence Pittman**

Don’t look now, but Pittman has been pretty efficient this season! Pittman played more snaps than Folston this week and led the team in carries and rushing yards. He has carved out a decent little role in this offense with the potential to expand it. His passing game usage seems to be nonexistent, however, as he ran only one route and did not receive a target. With Folston being inefficient and getting phased out, Pittman has a shot to be the team’s primary ball carrier. He is a low-end RB2 next week and sneaky value at \$3500 on Fanball.

**Inactive: Denard Robinson**

Yikes, Robinson was a surprise inactive. It does not look like "Shoelace" will be retaking his job soon, as Wadley ran away with it. He could challenge Folston for some snaps, but there is too much risk and not enough reasonable upside for him to be playable in season long or DFS.

# Leaderboard - Through Week 02

<div>
  <h3 class="team-header aaf-header">Through Week 02 - All Running Backs</h3>
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
