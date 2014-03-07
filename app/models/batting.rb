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
     def most_improved
       includes(:player).select("(at_bats/hits) AS batting_average,player_id").
           with_in_years(2009,2010).where("at_bats >= ?",200).
           order('batting_average DESC')
     end
     def triple_crown_winner(year)

     end

     def improved_players
       includes(:player).select("select (4*home_runs + runs_batted_in + stolne_base + caught_stealing)  AS fantacy,player_id").
           with_in_years(2011,2012).
           where('at_bats >= ?' ,500)
           group('year_id,player_id') #from battings GROUP BY year_id,player_id
     end

   end

 # Instance and other methods

  def slugging_percentage
    ((hits-doubles-triples-home_runs) + (2*doubles) + (3*triples) + (4*home_runs)).to_f / at_bats.to_f rescue 0
  end


end
