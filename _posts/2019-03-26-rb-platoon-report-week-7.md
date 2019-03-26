---
layout: post
title: RB Platoon Report - Week 07
nav: articles
author: Jackson Conner
twitter: AAFAnalysis
---

The weekly **_RB Platoon Report_** series goes beyond the boxscores and tries to decipher the backfield situation for every Alliance team. With many teams employing a committee approach, identifying the valuable contributors at the RB position could make or break your fantasy week.

_Note: all snap counts and routes run data comes from game film analysis and are unofficial._

{% assign week_key = "week-07" %}

<div>
  <h3 class="team-header ari-header">Arizona Hotshots - Week 07</h3>
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

While Pressley may not have scored twice this week, his usage was way more encouraging. Pressley got 15 carries (which was more than the other backs combined) and saw 57% of the snaps as opposed to his 48% last week. Another positive for Pressley was the fact that he saw some red zone work and was not immediately subbed out when they got down there. Pressley also was able to get some run in short yardage situations and bounced a third and short carry outside for a huge gain. 

Per usual, Pressley got in his passing game snaps, but he did only run 9 routes, which is low but game script played a part in that. Going forward, Pressley should be back in the driving seat of this backfield (despite last week's scare) and is one of the few game script proof RBs in the AAF.

### Grinder: Tim Cook

This was the type of week where Tim Cook’s usage, or lack thereof, in the passing game really hurts his appeal. He put together a solid day on the ground, rushing the ball 11 times for 53 yards, but he did not score a TD so his 5.3 fantasy points were not good enough. He is essentially a "TD or bust" option that is going to give you a few yards on the ground, but he has no passing game boost. Pressley continues to dominate the passing snaps and Pressley even siphoned some of Cook’s goal line work. I don’t really think Cooks stock changed that much as he looked good running the ball, but the idea that he is mrely "TD or bust" RB2 is starting to get enforced.

### Backup: Justin Stockton

I think Justin Stockton is a good RB, and his season YPC (5.1) would agree with me, but he is just not seeing enough opportunity. After getting a little run last week, Stockton turns around and sees 3 touches on 10 snaps this week. I don’t care how good of a player you are, it is near impossible to produce with that workload. Stockton did get some snaps in the red zone, but I see that as more of variability than a trend. In the end, Stockton is an electric RB that you just can’t trust.

<div>
  <h3 class="team-header orl-header">Orlando Apollos - Week 07</h3>
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

I was a big backer of D’Ernest Johnson again this week and he didn’t have an amazing game, but produced 12 points and was a steady piece in your lineup. However, Akeem Hunt was given a bigger role and that led to Johnson carrying the ball the least on the team. Johnson only accrued 7 carries, but did run the most routes at 10. He also dominated passing situations, playin 7 of the 13 possible but where owners should really be worried is at the goalline. 

De’Veon Smith returned to his early season ways and just completely dominated at the goalline playing 7 snaps to Johnson’s 4 and getting 6 touches to Johnson’s 2. With his snap percentage falling below 40% and touch percentage just a tick over 25%, Johnson is going to be a bit more risky to roster in the coming weeks.

### Goal line/Grinder Back: De’Veon Smith

If you played De'Veon Smith, congratulations! I was so-so on him this past week but I did not expect a three TD performance. Before this week, Johnson and Smith had pretty even usage on the goal line and in the red zone but Smith set himself apart this past week. Smith had 9 red zone touches and 6 of them came inside of the 5 (as opposed to 2 goal line touches for the 2 other backs). Smith also was on the field a lot to convert third and shorts which was shown in the stats as he led the team in third down snaps and dominated short yardage snaps. 

While it is just a one week sample, it looks like Smith is back to being the goal line back and immediately receives a big increase in fantasy viability. 

### Change of Pace Back: Akeem Hunt

Do the Hunt truthers have some hope? The answer is not a lot, but more than they had over the last few weeks. The Apollos turned to a 3-way committee again and Hunt saw some increase in playing time. He played fairly well with that opportunity as he averaged 4.3 YPC and caught both his targets for 14 yards. Hunt saw a lot of his work after the game was comfortably in hand, as he recorded 6 of his 9 carries in the fourth quarter. With just a one week sample size of this usage, Hunt is still a very risky play week-to-week.

<div>
  <h3 class="team-header bir-header">Birmingham Iron - Week 07</h3>
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

Did anyone see Trenton J. Richardson’s YPC this week? That’s right, 16 carries for 56 yards and a healthy(ish) 3.5 YPC. Of course, Richardson scores a TD as he does every week and he saw a gaudy 18 redzone snaps and 7 inside-the-five snaps. As usual, he was dominant on short yardage and passing down snaps, and honestly just dominated snaps overall. He posted an 82% snap percentage and a 92% touch percentage just solidifying himself in a tier by himself. While he only had 3 catches, that should go up in the future as he saw 6 targets and 32 routes run. 

Trent Richardson is the overall RB1 and that is indisputable.

### Change of Pace: Marshaun Coprich

If Richardson never got tired I doubt Coprich would see a snap. He doesn’t necessarily have a role other than to come in and run routes when Richardson is tired. The Iron are very pass heavy to begin with, but with Coprich on the field they do not run the ball at all. Going forward, Coprich has some passing game viability and is hardly a consideration.

### Injured: Brandon Ross 

Ross was injured for this game and all his snaps went straight to Richardson. While Richardson produced, I would bet that coach Tim Lewis would like to see Ross be involved when healthy and that makes him at least in a discussion next week.

<div>
  <h3 class="team-header sa-header">San Antonio Commanders - Week 07</h3>
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

I was all over #TeamFadeFarrow this past week and it was one of my better calls of the week. Farrow posted a 8/4/0.5 line on the ground and caught all 3 of his targets for only 8 yards. This was Farrow’s second worst week of the year and it came with even more bad news as the Commanders started to inch towards a 4 back committee. Four RBs on the commanders saw at least 15% of the snaps and that is huge as it has just been Farrow and Williams over the past few weeks. 

With four backs involved now, Farrow now suddenly has a low floor and his upside is based solely on TD production. Speaking of TDs, Farrow still completely dominated the goal line snaps so he has that TD upside still -- but he was stuffed repeatedly. Also, Farrow did see some decent usage in passage situations and that led to a team leading 11 routes ran. Still though, with the emergence of this four-way committee, Farrow is starting a be a little more risky than he has in the last.

### Change of Pace/Scat back: Trey Williams

It was a short term victory for Team Trey, but long term Williams is facing a lot of questions. Williams was only able to turn 6 carries into 19 yards but he ran 10 routes and caught his only target for a go ahead 36 yard TD. Trey Williams has flashed game breaking skill throughout the season and while it has not translated into high usage, it was good to see him score on a big play. Williams was a little less involved near the goalline this week but did reign supreme in third down and passing game usage. He seems to be the guy they go to in passing situations and he has showed that he can handle it. However, we have seen the Commanders implement a 4 back system which is going to kill Williams’ value. Our only hope is that he sees more volume due to impressive play.

### Another Change of Pace/Scat back: Aaron Green

Aaron Green did not really do much in this week 7 battle but he took valuable playing time away from Farrow and Williams. Green did not really seem to have a role and was just in there to give breathers which is weird. I would imagine that he could possibly be inactive in the coming weeks. As of now, he is unplayable.

### Backup: David Cobb

As opposed to Green, Cobb did seem to have some sort of role. Cobb did not play a lot but it was obvious they wanted him in there for some short yardage situation. He posted a 6/19/3.0 line on the ground and did not see a target on his 3 routes run. One thing that was interesting is that they seemed to like pairing Cobb with Williams in the read option and Cobb saw a lot of his snaps with Marquise in the game. If Marquise was to start, Cobb would be a really deep deep sleeper.

<div>
  <h3 class="team-header sl-header">Salt Lake Stallions - Week 07</h3>
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

### Early Down Rotational Back: Joel Bouagnon 

This was not a very pretty game for Bouagnon as he was down at 35% of the snaps and just kept fumbling and dropping the ball. On the ground Bouagnon ran the ball 9 times for a respectable 35 yards but almost lost a fumble. In the passing game Bouagnon ran a mere 6 routes and dropped 1 of his 2 targets and nearly lost a fumble on his only catch. If all else fails, like it did, the one thing that usually sets Bouagnon apart is his involvement near the goalline and in short yardage situations. However, Bouagnon posted around the same numbers as the other two backs in that area of the game. Bouagnon was also the obvious least preferred player in passing situations as well. 

It is worth saying though, that the Stallions weren’t at the goalline a lot so it is hard to say whether Bouagnon will have that role to himself going forward. In the end, Bouagnon still seems like the preferred between the tackles guy but he is becoming very one dimensional.

### Pass-catching Backup: Terrell Newby

After playing very limited last week, Newby was back to his pass catching only role this week. Terrell only played 17 snaps but he ran routes on 15 of them. He turned that into 2 catches for 28 yards and a key TD at the end of the game. Newby also did have a drop on his only other target. Newby did not record a carry and was basically nonexistent on short yardage situations. Newby does look to be splitting time on third downs and passing situations with Terrell Ward as they both recorded 6 passing situation snaps. With this high volume passing offense, Newby seems like a guy that should be locked into a few targets every week but lacks upside due to essentially no usage on the ground.

### Rotational Back: Terron Ward

After fumbling twice on four snaps last week, I thought Ward would be an afterthought in this game. To my surprise, Ward actually tied for the team lead in snaps and was the only back that was utilized on both the ground and in the passing game. In the run game, Ward did not find much success posting a 7/15/2.1 line but he did run a respectable 11 routes. Ward tied Bouagnon for for short yardage snaps and Newby for passing situation snaps showing his versatility in this offense. Going forward, Ward is not a guy that I completely trust but is worth keeping an eye on.

<div>
  <h3 class="team-header sd-header">San Diego Fleet - Week 07</h3>
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

While Gardner only played 4 snaps it was more of the same from him. He carries the ball 3 times for 2 yards and just continues his pattern of ineffectiveness that has started since his week 2&3 explosion. What is a little interesting though is that in the four snaps before his injury he received 3 carries and a target that he fell on. They obviously wanted to get him involved and his injury status will send severe ripple effects through this backfield.

### Power Back: Terrell Watson

If you told me Gardner would get injured in the first drive of the game and Watson would only end up with 38% of snaps played, I would’ve told you you were crazy. For reference, Watson played 49% of snaps last week WITH a healthy Gardner in the rotation. It was really puzzling but nonetheless he continues to be effective on the ground pounding his way to 93 total yards and a TD. Watson is the preferred option in the red zone and it is not even close if you look at the stats. He did seem to split a little bit of the passing down work with Sankey which could just be a result of Sankey playing more. In terms of Gardner’s injury status, I’m not sure how much it will affect Watson making him a TD dependent RB this week.

### Rotational Back: Bishop Sankey

Sankey was the main beneficiary of the Gardner injury as he jumped all the way up to 52% of the snaps as opposed to his 10% from last week. Sankey was also fairly effective on the ground, posting a 12/54/4.5 line. Also, while Sankey only caught one ball for six yards, he posted 21 routes run which was 8 more than Watson. Sankey commanded a versatile role and really played well with it and should see some more extended playing time if Gardner were to miss again. If Gardner somehow suited up next week, Sankey would probably be fairly irrelevant.

<div>
  <h3 class="team-header mem-header">Memphis Express - Week 07</h3>
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

Man this Memphis offensive line is rough. Zac Stacy rushed the ball 13 times for only 14 yards and was continuously swarmed in the backfield. Stacy’s usage was off the charts though as he tallied 76% of snaps and was used in every facet of the game. Stacy ran 24 routes and caught all 3 of his targets to keep up his underrated usage in the receiving game. Stacy’s problem is that he just has no running room at all. Stacy would be so much better if he just had better blocking from his offensive line but is so hard to fade just based on volume alone.

### Backup: Terrence Magee

Magee again continues to put some good tape together and really impressed with that TD run but just hasn’t gotten the usage we want. Only 24% if the snaps and just 5 touches is not something you want to rely on in fantasy. Magee does seem to be getting used a little more in short yardage situations and that has led to him scoring a few more TDs. I thought the exit of Badie would really help him out but it seems to have had not too much effect at all. Like so many others, he is a Td dependent back going forward. 

<div>
  <h3 class="team-header atl-header">Atlanta Legends - Week 07</h3>
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

Folston was nearing 50% of the snaps this week but low play volume for the game really hurt him. The legends got behind early and unfortunately Folston was not able to take advantage of that as he only caught 2 targets on 13 routes run. Folston did have an efficient game on the ground posting a 8/37/4.6 line. Folston did split time on passing downs and in the red zone/short yardage but he’s still playing significant snaps in all those facets of the game. All-in-all this seemed like a floor game for Folston and should still remain one of the better fantasy RBs going forward.

### Rotational Back: Brandon Ratcliff

Zampese’s RB rotation has been one of the more consistent so far as Radcliff records his traditional 6 carries and moderate passing game usage. He sort of does everything Folston does but with 75% of the production and less TD upside. Radcliff has also been hovering around 4 YPC this year and is just a model of consistency. While consistency is good, Radcliff really hasn’t shown any sort of upside at all. With this offense sputtering, Radcliff remains an uninspiring play going forward.

### Deeper Rotational Backup: Denard Robinson

As previously stated, Zampese has been consistent across the board with his RB usage and that extends to Robinson. Ever since Radcliff has been introduced to this offense, Robinson has become a complete afterthought, struggling to top 20% snap percentage week after week. In this weak offense with no usage, it is going to be extremely hard to play Denard.

# Leaderboard - Through Week 07

<div>
  <h3 class="team-header aaf-header">Through Week 07 - All Running Backs</h3>
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
