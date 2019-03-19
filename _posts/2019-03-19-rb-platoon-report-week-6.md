---
layout: post
title: RB Platoon Report - Week 06
nav: articles
author: Jackson Conner
twitter: AAFAnalysis
---

The weekly **_RB Platoon Report_** series goes beyond the boxscores and tries to decipher the backfield situation for every Alliance team. With many teams employing a committee approach, identifying the valuable contributors at the RB position could make or break your fantasy week.

_Note: all snap counts and routes run data comes from game film analysis and are unofficial._

{% assign week_key = "week-06" %}

<div>
  <h3 class="team-header ari-header">Arizona Hotshots - Week 06</h3>
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

In what was a scary game for #JhurellCow truther, Pressley did manage to score twice and really save his day. Pressley’s 48% snap percentage was a little low but it was still a tier or so above all the other RBs on the team. What did worry me was the carry distribution. Everyone on the team had between 11 and 13 carries with no one really stepping forth as the goal line back. Pressley did score twice but Cook was the preferred RB in short yardage situations. Pressley does seem to be the guy they lean on when they fall behind but it looks like each RB will have a significant amount of carries when they are up. Pressley is still an RB1 but a guy that is starting to worry me if he doesn’t score.

### Grinder: Tim Cook

Tim Cook is finally starting to find his footing again as this was one of his most productive games of the season. Cook did not score but averaged 6.5 YPC on the ground and was highlighted by an impressive 25 yard run in the first quarter. Cook did out snap Stockton but I think that was honestly more of a product of game script. Whenever the Hotshots had to pass it was mostly Pressley and Stockton but Cook did dominate short yardage as he had 5 touches on his 6 short yardage snaps. Cook is always a threat to score and probably is locked into 6-12 carries on the ground week-to-week but he is also a huge risk to get game scripted out if the Hotshots don’t play as good as they did last week.

### Backup: Justin Stockton

Stockton finally got the volume increase we have been hoping for but his efficiency did take a dip to 3.1 YPC. His snap percentage hovered around his usual 25% but he was not a factor in the passing game at all. Stockton did play in some passing situations but only really saw draws or delayed handoffs on those plays. It seems as Stockton will be the primary backup in negative game script games and Cook will be the primary in positive game script games. Whatever it is, Stockton is still tough for me to play unless he continues this upward trending usage in volume.

<div>
  <h3 class="team-header orl-header">Orlando Apollos - Week 06</h3>
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

In what seemed like a floor game for D’Ernest Johnson, he was still able to put up 11 ppr points which is huge. He was the clear leader in this backfield, putting up a 50% snap percentage and 58% touch percentage. While Johnson and Smith ran the ball 9 times each, it was Johnson again who was unleashed in the passing game, running 22 routes and garnering 6 targets. Johnson dominated the passing downs and even drew an even split with Smith on red zone/short yardage snaps. Even after a meh day, Johnson is still the top dog in this backfield and that will continue to translate nicely into fantasy points.

### Rotational Back: De’Veon Smith

Well, now we know how much a negative game script will affect Smith’s game. It was not pretty as he played 33% of the snaps and ran the ball 9 times for 39 yards. Smith had alright usage in the short yardage role but he was not the preferred option in passing situations, playing 2 of the 15 possible snaps. Smith also ran 9 routes but failed to record a single target. With Smith’s limited role in the passing game, he is going to maintain that uber-efficiency he had before last week or start scoring TDs.

### Change of Pace Back: Akeem Hunt

Hunt was back and active but it really did not matter. He played alright in his very limited sample size, running for 12 yards on 2 carries, but he did not record a target on 6 routes run and only played 13 snaps overall. He did see the field a little in a hurry-up drive but it just is not anywhere near enough for him to be considered. While he has played fine I think he will be hard pressed to move up with the superb play of D’Ernest and De’Veon

### Inactive: Ryan Green

To nobody’s extreme surprise, Green was inactive after sort of filling in for Hunt last week. Green did not play much though and missed a huge block in pass protection so it is no shocker that they just gave the 3rd back limited snaps right back to Hunt. Green is not fantasy relevant.

<div>
  <h3 class="team-header bir-header">Birmingham Iron - Week 06</h3>
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

This backfield is back down to 2 running backs and Trent Richardson has returned to being an AAF wonder. Richardson’s usage is insane as he totaled a massive 81% snap percentage and an 85 percent touch percentage. He scored twice and had his most efficient game on the ground (2.9 YPC) of the season. In the passing game, he was out of this world. He ran 45, yes 45, routes and received 12 targets, both were easily records from the RB position this year. Richardson rarely comes off the field in passing situations and dominates touches at the goal line furthering his case to be the overall RB1

### Change of Pace: Marshaun Coprich

Coprich basically came in and replaced the waives Ladarius Perkins and took over his exact role. He was primarily in the game to run routes as he did so on 14 of his 16 snaps. In short yardage and near the goal line he was completely non-existent. We have seen this role turn in some okay fantasy games but has been unreliable because you are basically betting on him to catch 4-6 passes in under 20 snaps, which is really difficult.

### Injured: Brandon Ross

Ross was injured for this game and all his snaps went straight to Richardson. While Richardson produced, I would bet that coach Tim Lewis would like to see Ross be involved when healthy and that makes him at least in a discussion next week.

### Deep backup: Ty Isaac

Ty Isaac was active but he failed to record a snap. He hasn’t been relevant this season and barring an injury to Richardson, I do not believe he will be anytime soon.

### Cut: LaDarius Perkins

After what was a solid start to the season, Perkins has somehow found his way into the doghouse and was cut before the game. He is droppable in all formats.

<div>
  <h3 class="team-header sa-header">San Antonio Commanders - Week 06</h3>
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

Farrow still has not matched that week 4 explosion game yet but he has been putting together some solid games. Farrow once again played over 50% of the snaps despite being banged up late in the game but is upside was capped by how few plays The Commanders ran. In what is a good offense, Farrow sees a lot of goal line work which led to him scoring his 4th TD of the season this past Sunday. Farrow also seems to have a monopoly on two-point plays and short yardage plays while still leading on passing downs. Farrow is not a bell-cow but his job security is good but does face a tough task this week in the Stallions.

### Change of Pace/Scat back: Trey Williams

The tape that Trey Williams is putting on the field is absolutely amazing. He put up 5.3 YPC this week despite being continuously hit in the backfield and even having a 20-yard highlight reel run called back. I love Trey Williams as a player but I do just wish we could see a little more volume out of him. He is not totally excluded from any facet of the game but he plays second fiddle to Farrow in all of them. However, he does have better TD upside than people think and his a threat to score on every play. He will maintain RB2 value in a tough matchup this week and would receive a huge boost if Farrow was out.

### Another Change of Pace/Scat back: Aaron Green

Aaron Green played much less of a role this week as he only played 4 snaps and they all came when Farrow was hurt and the game was in hand. Green has not played bad this season, averaging 4.6 YPC, but was extremely affected by Trey Williams returning back in week 3. If Farrow were to miss time, Green would be a huge beneficiary but as of now, he is virtually unplayable.

### Deep Backup: David Cobb

For some reason, David Cobb was active this week but he did not see a snap. Cobb has not been much of a factor this year and is the fourth RB on the team. It would not be surprising to see him cut at all. Even if Farrow were to miss, I would be hard pressed to play Cobb.

<div>
  <h3 class="team-header sl-header">Salt Lake Stallions - Week 06</h3>
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

### Lead Back: Joel Bouagnon

The Stallions employed a weird game plan as they went 5 wide a ton and that led to Bouagnon being either out wide or on the sidelines a lot. In terms of pure usage among RBs, Bouagnon dominated and left the others in the dust but it is frustrating seeing them not use an RB on certain snaps a lot. Bouagnon did end up with 19 carries but could not find the endzone despite heavy usage in that department. With two backs that possess more pass-catching prowess, Bouagnon still ran 10 routes as well. The game script this week could be an issue for him, though, as San Antonio possesses the ability to get up big early. Still, Bouagnon is a guy that has immense TD upside week-to-week and should be treated like an RB1

### Pass-catching Backup: Terrell Newby

I’m going to assume that Newby was still a little hurt as he only played 10% of the snaps and ran a measly 2 routes. He was able to find the endzone on a 2pt conversion but if you started him in DFS or season long you were disappointed with his 3.4 points. I’m going to treat this as a blip on the radar as the potential game script sets up nicely for Newby’s pass-catching prowess next week although he does come with more risk than he did in the past.

### Change of Pace: Terron Ward

Terron Ward looked great out there running the football and has apparently trained with announcer and former NFL RB Maurice Jones-Drew but he couldn’t hold onto the football. He was only credited with one fumbled but botched a handoff and more or less created 2 fumbles on 4 snaps. This does not bode well for him as he will almost certainly be in the dog house.

<div>
  <h3 class="team-header sd-header">San Diego Fleet - Week 06</h3>
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

The #FadeQuan movement has now been successful for three weeks but it is going to get to the point where he is adequately priced cheap. Gardner hasn’t seen elite passing game usage and is not making big plays on the ground and that is really hurting him. What is really concerning is that he played 0 goal line snaps to Terrell Watson’s 7, 1 passing down snap to Watson’s 10 and 2 short yardage snaps to Watson’s 9. He is basically turning into an early down between the tackles grinder that gets some work here and there in the passing game. He is still an RB2 but his stock is so far down from the beginning of the season.

### Pass Blocking Power Back: Terrell Watson

Terrell Watson touchdown regression week has finally hit us and I wish it would’ve come a little earlier when I was a bit more on him. Watson had the same amount of carries as Gardner (8) but doubled his rushing yard total (38-19). Watson also played four more drives than him and, as you can see in the stats above in Gardner’s write up, had much more usage in passing downs and near the goal line. Sooner or later this touchdown regression was going to hit Watson and the only problem with him is that he might start to become over-hyped. He is still an RB2 for me based on a low yardage ceiling.

### Backup: Bishop Sankey

Bishop Sankey really was a non-factor playing only 6 snaps and totaling 15 total yards on 3 touches. I was expecting him to cut into this committee a little more but it looks like that is simply not the case for at least this week. Sankey is just too risky of a play right now.

<div>
  <h3 class="team-header mem-header">Memphis Express - Week 06</h3>
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

I was a bit surprised when I saw that Stacy had averaged sub 3.0 YPC on the ground again because it seemed like he was making a lot of people miss and gaining extra yards every time he touched the ball. Stacy did bail himself out though with an 11 yard receiving touchdown in the second quarter. In this 2 man backfield, Stacy saw a 65% snap percentage (2nd among RBs this week) and split time with Magee on passing downs and at the goal line. Stacy seems to have this job on lock and should be in for some good volume in what should be a nitty-gritty game against Birmingham.

### Backup: Terrence Magee

We were hoping Magee would see a bit more run in the game with only two RBs but he only received 5 touches. Magee did see some nice usage at the goal line and in passing situations so that is positive. I am hoping this week that we can get him up to 40% of snaps and 10 or so touches. For me, he is an RB2 going forward.

### Injured Reserve: Sherman Badie

Badie provides a spark to this offense but was placed on the injury report this past week. I loved what he brought to the table but he is safely droppable after unfortunately leaving us.

<div>
  <h3 class="team-header atl-header">Atlanta Legends - Week 06</h3>
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

### Rotational back: Tarean Folston

Folston did only see 9 total touches but it was promising to see him get to a 45% snap percentage and 20 routes run. He is seeming to split time in passing situations which is surprising, but he is dominating short yardage and goal line snaps, which is even more surprising. That usage near the goal line has led to Folston scoring 3 TDs in the past 2 weeks. He saw 3 straight goal line looks at the end of the first half and it could’ve been four of Murray did not mishandle the snap on first down. Folston has been great since the Wadley injury and I believe he will continue to produce RB1 numbers.

### Rotational Back: Brandon Ratcliff

While everyone presumes Radcliff is just a straight power back, he played 11 passing downs, ran 15 routes, and even saw 1 more target than Folston. Radcliff owners would like to see him involved more at the goal line though as he was not at all last week. However, Radcliff does look to be involved in both the passing and running game and will not be game scripted out. He is an RB2 going forward but there might be better options this week as he plays Orlando

### Deeper Rotational Backup: Denard Robinson

Robinson is just fading deeper and deeper into the oblivion as he played just 11 snaps this week and got 3 touches and only 5 routes ran. Robinson has had an up and down season in terms of usage but it seems like he is just completely trending down and is comfortably the third running back on this team. I wouldn’t play him in any format.

### Injured: Lawrence Pittman

Pittman was hurt again this week and I’m not really sure if he returns and what to make of it. When he was healthy, he was delegated to the fourth running back role and I don’t think he would see over 25% of the snaps. I would monitor his health this week just in case.

# Leaderboard - Through Week 06

<div>
  <h3 class="team-header aaf-header">Through Week 06 - All Running Backs</h3>
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
