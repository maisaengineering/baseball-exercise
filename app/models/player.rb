class Player < ActiveRecord::Base
  self.primary_key = :player_id

  has_many :battings



  def name
    "#{first_name} #{last_name}"
  end

end
