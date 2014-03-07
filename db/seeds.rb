# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Batting.destroy_all
Player.destroy_all

1.upto(10) do |i|
  player = Player.create(player_id: "abc#{i}",first_name: "abcF#{i}",last_name: "abcL#{i}")
end


# player 1
# 2009


Batting.create!(player_id: 'abc1',year_id: 2009,team_id: 'OAC',at_bats: 1,hits: 2,doubles: 3,triples: 4,
                home_runs: 5,runs_batted_in: 6,stolen_base: 1,caught_stealing: 2)
Batting.create!(player_id: 'abc1',year_id: 2009,team_id: 'OAC',at_bats: 1,hits: 2,doubles: 3,triples: 4,
                home_runs: 5,runs_batted_in: 6,stolen_base: 1,caught_stealing: 2)

# 2011

Batting.create!(player_id: 'abc1',year_id: 2011,team_id: 'OAC',at_bats: 1,hits: 2,doubles: 3,triples: 4,
                home_runs: 5,runs_batted_in: 6,stolen_base: 1,caught_stealing: 2)
Batting.create!(player_id: 'abc1',year_id: 2011,team_id: 'OAC',at_bats: 1,hits: 2,doubles: 3,triples: 4,
                home_runs: 5,runs_batted_in: 6,stolen_base: 1,caught_stealing: 2)

# 2012

Batting.create!(player_id: 'abc1',year_id: 2012,team_id: 'OAC',at_bats: 1,hits: 2,doubles: 3,triples: 4,
                home_runs: 3,runs_batted_in: 6,stolen_base: 1,caught_stealing: 2)
Batting.create!(player_id: 'abc1',year_id: 2012,team_id: 'OAC',at_bats: 1,hits: 2,doubles: 3,triples: 4,
                home_runs: 5,runs_batted_in: 6,stolen_base: 1,caught_stealing: 2) # not fantacy


# player 2
# 2009


Batting.create!(player_id: 'abc2',year_id: 2009,team_id: 'OAK',at_bats: 1,hits: 2,doubles: 3,triples: 4,
                home_runs: 1,runs_batted_in: 6,stolen_base: 1,caught_stealing: 2)
Batting.create!(player_id: 'abc2',year_id: 2009,team_id: 'OAK',at_bats: 1,hits: 2,doubles: 3,triples: 4,
                home_runs: 1,runs_batted_in: 6,stolen_base: 1,caught_stealing: 2)

# 2011

Batting.create!(player_id: 'abc2',year_id: 2011,team_id: 'OAK',at_bats: 1,hits: 2,doubles: 3,triples: 4,
                home_runs: 5,runs_batted_in: 6,stolen_base: 1,caught_stealing: 2)
Batting.create!(player_id: 'abc2',year_id: 2011,team_id: 'OAK',at_bats: 1,hits: 2,doubles: 3,triples: 4,
                home_runs: 5,runs_batted_in: 6,stolen_base: 1,caught_stealing: 2)

# 2012

Batting.create!(player_id: 'abc2',year_id: 2012,team_id: 'OAK',at_bats: 1,hits: 2,doubles: 3,triples: 4,
                home_runs: 6,runs_batted_in: 6,stolen_base: 1,caught_stealing: 2)
Batting.create!(player_id: 'abc2',year_id: 2012,team_id: 'OAK',at_bats: 1,hits: 2,doubles: 3,triples: 4,
                home_runs: 5,runs_batted_in: 6,stolen_base: 1,caught_stealing: 2) # not fantacy


# player 3
# 2009


Batting.create!(player_id: 'abc3',year_id: 2009,team_id: 'OAK',at_bats: 1,hits: 2,doubles: 3,triples: 4,
                home_runs: 2,runs_batted_in: 6,stolen_base: 1,caught_stealing: 2)
Batting.create!(player_id: 'abc3',year_id: 2009,team_id: 'OAK',at_bats: 1,hits: 2,doubles: 3,triples: 4,
                home_runs: 3,runs_batted_in: 6,stolen_base: 1,caught_stealing: 2)

# 2011

Batting.create!(player_id: 'abc3',year_id: 2011,team_id: 'OAK',at_bats: 1,hits: 2,doubles: 3,triples: 4,
                home_runs: 3,runs_batted_in: 6,stolen_base: 1,caught_stealing: 2)
Batting.create!(player_id: 'abc3',year_id: 2011,team_id: 'OAK',at_bats: 1,hits: 2,doubles: 3,triples: 4,
                home_runs: 3,runs_batted_in: 6,stolen_base: 1,caught_stealing: 2)

# 2012

Batting.create!(player_id: 'abc3',year_id: 2012,team_id: 'OAK',at_bats: 1,hits: 2,doubles: 3,triples: 4,
                home_runs: 2,runs_batted_in: 6,stolen_base: 1,caught_stealing: 2)
Batting.create!(player_id: 'abc3',year_id: 2012,team_id: 'OAK',at_bats: 1,hits: 2,doubles: 3,triples: 4,
                home_runs: 1,runs_batted_in: 6,stolen_base: 1,caught_stealing: 2) # not fantacy








