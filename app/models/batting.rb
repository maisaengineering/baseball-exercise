class Batting < ActiveRecord::Base
  #Attributes & Variables ---------------

  #Relations ----------------------------
  belongs_to :player
  #Scopes -------------------------------
  scope :with_in_years, ->(from,to) { where(year_id: from..to)}
  #Validations goes here ----------------

  #Callbacks goes here ------------------

  #- Class Methods
  class << self

    def most_improved_bat_avg
      includes(:player).select("(hits/at_bats) AS batting_average,player_id").
          with_in_years(2009,2010).where("at_bats >= ?",200).
          order('batting_average DESC')
    end


    def improved_fantacy_players(year)
       select("(4*home_runs + runs_batted_in + stolen_base + caught_stealing)  AS fantacy_score,player_id").where(year_id: year).group('player_id').order('fantacy_score DESC') #from battings GROUP BY year_id,player_id
    end

    def triple_crown_winner(year)
      most_avg_batting =  includes(:player).select("(hits/at_bats) AS batting_average,player_id").where(year_id: year).order('batting_average DESC').first
      most_home_runs =  where(year_id: year).order('home_runs DESC').first.player_id
      most_rbi =  where(year_id: year).order('runs_batted_in DESC').first.player_id
      if (most_avg_batting.player_id == most_home_runs && most_avg_batting.player_id == most_rbi)
        most_avg_batting.player
      else
        nil
      end
    end


  end

  # Instance and other methods

  def slugging_percentage
    ((hits-doubles-triples-home_runs) + (2*doubles) + (3*triples) + (4*home_runs)).to_f / at_bats.to_f rescue 0
  end


end
