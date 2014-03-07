class CreateBattings < ActiveRecord::Migration
  def change
    create_table :battings do |t|
      t.string :player_id
      t.integer :year_id
      t.string :team_id
      t.integer :g
      t.integer :at_bats
      t.integer :r
      t.integer :hits
      t.integer :doubles
      t.integer :triples
      t.integer :home_runs
      t.integer :runs_batted_in
      t.integer :stolen_base
      t.integer :caught_stealing
    end
  end
end
