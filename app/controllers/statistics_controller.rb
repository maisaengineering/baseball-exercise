class StatisticsController < ApplicationController

  def index
    @most_improved_battings = Batting.most_improved
    @slugging_percentage_battings = Batting.includes(:player).where(team_id: 'OAK',year_id: 2007)

    @improved_players = Batting.improved_players


  end

end
