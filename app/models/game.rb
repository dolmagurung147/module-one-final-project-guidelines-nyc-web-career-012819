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

  def self.get_websites_and_odds_of_the_game(team_name)
    game = Game.get_game_by_team(team_name)[0]
    puts "These are the websites that is providing odds for your team: "
    website_arr = []
    game.websites.each do |website|
      website_arr << website.name
      website_arr << BettingOdd.find_by(website_id: website.id, game_id: game.id).odds
      website_arr << ""
    end
    puts "Sportsbooks and their respective odds: "
    puts ""
    puts game.teams.join(" VS ")
    puts ""
    website_arr
  end

end
