class User < ActiveRecord::Base
  has_many :bets
  has_many :websites, through: :bets
  has_many :games, through: :bets

  def make_a_bet(game_id, amount)
    Bet.create(user_id: self.id, game_id: game_id, amount: amount)
  end

  def self.all_name
    self.all.map do |user|
      user.name
    end.flatten.uniq
  end

end
