class StatisticsController < ApplicationController

  def index
    @most_improved_battings = Batting.most_improved
  end

  def slugging_percentage
    @slugging_percentage_battings = Batting.includes(:player).where(team_id: 'OAK',year_id: 2007)
  end

  def most_improved_fantacy_palyers
    @improved_players = Batting.improved_players
  end

  def triple_crown_winner

  end




end
