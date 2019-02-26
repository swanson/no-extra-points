---
layout: post
title: Air Yards, RACR, aDOT, WOPR - Who cares?
nav: articles
author: Matt Swanson
twitter: NoExtraPoints
---

If you've been following the [@NoExtraPoints Twitter account](https://twitter.com/NoExtraPoints), you'll know that I am very excited to announce the newest feature to the site: [Air Yards!](https://twitter.com/NoExtraPoints/status/1099179509599883264)

<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">📣 Big new features coming to <a href="https://t.co/jCdpYY1nQO">https://t.co/jCdpYY1nQO</a> this weekend<br><br>WE GOT AIR YARDS <a href="https://twitter.com/friscojosh?ref_src=twsrc%5Etfw">@friscojosh</a> <a href="https://twitter.com/evansilva?ref_src=twsrc%5Etfw">@evansilva</a><a href="https://twitter.com/hashtag/AirYards?src=hash&amp;ref_src=twsrc%5Etfw">#AirYards</a> <a href="https://twitter.com/hashtag/WOPR?src=hash&amp;ref_src=twsrc%5Etfw">#WOPR</a> <a href="https://twitter.com/hashtag/RACR?src=hash&amp;ref_src=twsrc%5Etfw">#RACR</a> <a href="https://twitter.com/hashtag/AAF?src=hash&amp;ref_src=twsrc%5Etfw">#AAF</a> <a href="https://t.co/Gu6rsbOwSl">pic.twitter.com/Gu6rsbOwSl</a></p>&mdash; #NoExtraPoints (@NoExtraPoints) <a href="https://twitter.com/NoExtraPoints/status/1099179509599883264?ref_src=twsrc%5Etfw">February 23, 2019</a></blockquote>
<script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

Several people have asked me: what are air yards, why was I so excited, and why they should care as a fantasy player?

## What are Air Yards?

Air Yards are the total yards thrown to a player (including incomplete passes).

I think it's easiest to explain more with an example...

---

Imagine that WR Mekale McKay got three targets.

- Target 1: Pass complete for 20 yards (15 in the air, 5 yards after catch)
- Target 2: Pass complete for 30 yards (30 in the air, 0 yards after catch)
- Target 3: Pass incomplete (50 yards downfield)

McKay ends up with these stats:

- 3 targets
- 2 receptions
- 50 yards receiving (5 yards after catch)
- 95 air yards (15 + 30 + 50)

Air Yards captures the 50 yard bomb that McKay did not catch, but doesn't include the 5 yards extra he gained on his first target.

Cool, so why is this number useful for fantasy football?

## Intent

Air Yards are the best metric the community has found to represent _intent_.

It is a strong signal that combines several things: the receiver had to be on the field, a coach had to call the pass play, the receiver had to run a route, the receiver had to get open (or be good at jump balls), and the quarterback had to make a read and throw to that specific receiver.

Whether or not the receiver makes the catch, everyone from the offensive coordinator to the QB **intended** for the receiver to get the yardage.

If we try to put a number on that intent, you get air yards.

By quantifying opportunity, we get an extra variable to help evaluate players.

- Player 1: 3 catches for 30 yards on 5 targets (45 air yards)
- Player 2: 3 catches for 30 yards on 5 targets (120 air yards)

With only the traditional boxscore stats (catches, yards, targets), it is hard to separate the two players.

But with air yards, we can see that Player 2 is a more appealing fantasy play -- his targets were going much further down the field.

If you're familiar with the concept of **aDOT** -- average depth of target -- you might recognize that it is related to air yards.

The formula is: Air Yards = Targets &times; aDOT

## Efficiency

Getting air yards data also unlocks another advanced metric that describes receiver efficiency.

The naive efficiency measure of a receiver is how many of their targets they caught. But intuitively, we know that we expect receivers to catch fewer deep bombs than screen passes. A deep threat will catch fewer of their targets, but the catches will go for more yards than someone running 4-yard crossing routes all game.

RACR -- receiving air yards conversion ratio -- is a metric developed by [Josh Hermsmeyer](https://twitter.com/friscojosh) to account for this. Per Josh: "RACR measures how many receiving yards a player creates for every air yard thrown at him".

The formula is: RACR = Receiving Yards / Air Yards

This number combines YAC and depth of target to form a more complete picture of efficiency.

A "good" RACR varies, but roughly speaking, an efficient player's ratio is 1.0 or higher.

## Opportunity

Air yards also allows us to create a composite metric for opportunity.

A naive metric for opportunity is targets or targets per game. But we know that not all targets are equal.

A slot receiver getting lots of targets close to the line of scrimmage might rack up PPR catch points, but will not get much yardage. A deep threat on the outside might only see two targets, but could get the 100 yard bonus if they are each huge chunk plays.

Josh Hermsmeyer came up with WOPR -- weighted opportunity rating -- as the answer.

WOPR is a weighted average that incorporates a players share of team targets and share of team air yards.

The formula is: WOPR = 1.5 &times; Target Market Share + 0.7 &times; Air Yards Market Share

As a benchmark, the elite WRs (OBJ, Julio, Hopkins) in the NFL typically have WOPRs of 0.70 to 0.80.

In my own analysis for the CFL (Canadian Football League), the top receivers in the 0.60 to 0.70 range (I suspect this has to do with the increased passing emphasis and more receivers per play).

I am not quite sure what a good WOPR should be in the AAF, but the consensus "target-hog" WRs (Quinton Patton, Charles Johnson, Mekale McKay) are right around 0.60 after three games.

## Putting it all together

Air yards are built around depth of target and are the best predicator we've found of intent.

From this intent, we can derive a better efficiency metric than catch rate (RACR) and a better opportunity metric than targets per game (WOPR).

Air yards help us understand WR usage on a much finer level of detail than traditional boxscore data (or even metrics like snap count or routes run).

I'll be working with Josh for the rest of the season to implement his predictive "Air Yards Buy Low Model".

It's a machine learning model that uses air yards data to predict situations where a player has under-performed expectations (based on opportunity) and may be due for a spiked production week. It's been very successful for NFL and we're excited to see if the results will carry over into the AAF!

## Reference

If you're more interested in this topic, please check out these seminal posts on Air Yards:

[Air Yards Explained](https://www.4for4.com/fantasy-football/2018/preseason/air-yards-explained)

[Using Air Yards to Identify Buy Low Candidates](http://rotoviz.com/2017/08/159332/)
