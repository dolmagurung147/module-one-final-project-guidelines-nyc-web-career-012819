class Website < ActiveRecord::Base

  has_many :betting_odds
  has_many :bets
  has_many :user, through: :bets
  has_many :games, through: :betting_odds

  def websites
    name
  end

  def self.all_websites
    self.all.map do |game|
      game.websites
    end.flatten.uniq
  end

end
