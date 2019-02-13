class Game < ActiveRecord::Base

  has_many :betting_odds
  has_many :websites, through: :betting_odds

  def teams
    [team1, team2]
  end

  def self.all_teams
    self.all.map do |game|
      game.teams
    end.flatten.uniq
  end

  def self.get_game_by_team(team_name)
    Game.all.where(team1:  team_name) || Game.all.where(team2: team_name)
  end

end
