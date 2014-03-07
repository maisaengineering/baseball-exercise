class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players, :id => false do |t|
      t.string :player_id
      t.integer :birth_year
      t.string :first_name
      t.string :last_name

      #t.timestamps
    end
    add_index :players, :player_id#, :unique => true
  end
end
