class StatisticsController < ApplicationController

  def index
    @most_improved_battings = Batting.most_improved_bat_avg
  end

  def slugging_percentage
    @slugging_percentage_battings = Batting.includes(:player).where(team_id: 'OAK',year_id: 2007)
  end

  def most_improved_fantacy_palyers
    improved_players_2011 = Batting.improved_fantacy_players(2011).to_a
    improved_players_2012 = Batting.improved_fantacy_players(2012).to_a
    fantacy_palyers = {}
    improved_players_2011.each do |batting|
      player = improved_players_2012.detect{|b| b.player_id == batting.player_id}
       if player and player.fantacy_score and (player.fantacy_score > batting.fantacy_score  )
         fantacy_palyers[player.player_id] = player.fantacy_score - batting.fantacy_score
       end
    end
    @fantacy_palyers = Hash[fantacy_palyers.sort_by{|k, v| v}.reverse]

  end

  def triple_crown_winner

  end




end
