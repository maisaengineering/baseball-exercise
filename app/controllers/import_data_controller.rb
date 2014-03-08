class ImportDataController < ApplicationController
  require 'roo'

  def index
  end

  def player_data
    s = Roo::CSV.new(params[:data_file].path, csv_options: {col_sep: "\t"})
    s.default_sheet = s.sheets.first
    players = []
    2.upto(s.last_row) do  |i|
      players << Player.new(player_id: s.cell(i,'A'), birth_year: s.cell(i,'B'), first_name: s.cell(i,'C'), last_name: s.cell(i,'D'))
    end
    Player.import players

    redirect_to import_data_url
  end

  def batting_data
    s = Roo::CSV.new(params[:data_file].path, csv_options: {col_sep: "\t"})
    s.default_sheet = s.sheets.first
    battings = []
    2.upto(s.last_row) do  |i|
      battings << Batting.new(player_id: s.cell(i,'A'), year_id: s.cell(i,'B'), team_id: s.cell(i,'C'), g: s.cell(i,'D'),
                      at_bats: s.cell(i,'E'), r: s.cell(i,'F'), hits: s.cell(i,'G'), doubles: s.cell(i,'H'), triples: s.cell(i,'I'),
                      home_runs: s.cell(i,'J'), runs_batted_in: s.cell(i,'K'), stolen_base: s.cell(i,'L'),
                      caught_stealing: s.cell(i,'M'))
    end
    Batting.import battings
    redirect_to import_data_url
  end

end
