## Conference Scheduling Challenge

You are the orgnazer of the next Ruby Conference. Here are the rules.

1. The conference will have only two parallel tracks.

2. Morning session for both tracks begins at 9 AM.

3. Lunch begins at 12 noon so talk should end by noon.

4. After lunch session begins at 1 PM.

5. The session cannot go after 5 PM since a networking session starts at
   5 PM.

6. You can assume that when one talk ends then immediately second talk
   starts and there is no break or loss of time.

7. Each lightning talk is of 5 minutes.

8. All the lightning talks must happen in a single room bunched together without any lunch break in between. Lightning talks can't be split into two rooms. Just like other talks while lightning talks are happening in track 1 then something else can happen in track 2. Similarly if lightning talks are happening in track 2 then something else can happen in track 1.

9. All the ligtning talks must happen sequentially one after another without having any "non lightning talks" in between. It means once a lightning talk has started then it will be followed up another lightning talk and so on until all the lightning talks are done.

10. This is a one day conference.

11. Typically, the 2 parallel tracks happen in two separate rooms and the lightning talks happen in a common room (often the 2 separate rooms are combined). For this exercise assume that lighting talk will take place in one of the two rooms and not in a separate common room.

12. Your attempt should be to try to fit as many talks as you can. If you are not able to fit some of the talks then print the list of talks that did not fit so that their speakers can be notified.

### Here are the talks which have been screened and have been qualified.

* Pryin open the black box _60 minutes_
* Migrating a huge production codebase from sinatra to Rails _45 minutes_
* How does bundler work _30 minutes_
* Sustainable Open Source _45 minutes_
* How to program with Accessiblity in Mind _45 minutes_
* Riding Rails for 10 years _lightning talk_
* Implementing a strong code review culture _60 minutes_
* Scaling Rails for Black Friday _45 minutes_
* Docker isn't just for deployment _30 minutes_
* Callbacks in Rails _30 minutes_
* Microservices, a bittersweet symphony _45 minutes_
* Teaching github for poets _60 minutes_
* Test Driving your Rails Infrastucture with Chef _60 minutes_
* SVG charts and graphics with Ruby _45 minutes_
* Interviewing like a unicorn: How Great Teams Hire _30 minutes_
* How to talk to humans: a different approach to soft skills _30 minutes_
* Getting a handle on Legacy Code _60 minutes_
* Heroku: A year in review _30 minutes_
* Ansible : An alternative to chef _lightning talk_
* Ruby on Rails on Minitest _30 minutes_


#### Here is a sample output :

```
Track 1
09:00 AM Heroku: A year in review 30 min
09:30 AM Microservices, a bittersweet symphony 45 min
10:15 AM Implementing a strong code review culture 60 min
.....
.....

Track 2
09:00 AM Test Driving your Rails Infrastucture with Chef 60 min
......
.......

```


##### Here is the Code to run
1. Install Required rubygems
  `bundle install`
2. Run Code
  `ruby lib/talk.rb`


##### Here is the output
```
  Track 1
  09:00AM Implementing a strong code review culture 60 minutes
  10:00AM Pryin open the black box 60 minutes
  11:00AM Teaching github for poets 60 minutes
  12:00PM Lunch

  01:00PM Getting a handle on Legacy Code 60 minutes
  02:00PM Test Driving your Rails Infrastucture with Chef 60 minutes
  03:00PM SVG charts and graphics with Ruby 45 minutes
  03:45PM Scaling Rails for Black Friday 45 minutes
  04:30PM Heroku: A year in review 30 minutes
  05:00PM Networking Event

  Track 2
  09:00AM How to program with Accessiblity in Mind 45 minutes
  09:45AM Sustainable Open Source 45 minutes
  10:30AM Migrating a huge production codebase from sinatra to Rails 45 minutes
  11:15AM Microservices, a bittersweet symphony 45 minutes
  12:00PM Lunch

  01:00PM Docker isn't just for deployment 30 minutes
  01:30PM Callbacks in Rails 30 minutes
  02:00PM How does bundler work 30 minutes
  02:30PM Ruby on Rails on Minitest 30 minutes
  03:00PM Interviewing like a unicorn: How Great Teams Hire 30 minutes
  03:30PM How to talk to humans: a different approach to soft skills 30 minutes
  04:00PM Riding Rails for 10 years lightning talk
  04:10PM Ansible : An alternative to chef lightning talk
  05:00PM Networking Event

```

##### Rspec

1. Run Rspecs
  `bundle exec rspec`
