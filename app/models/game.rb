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

  def self.all_games
    Whirly.start do
      Whirly.status = "Loading games, one moment..."
      sleep 4
    end
      system 'clear'
      prompt = TTY::Prompt.new
      menu_choice = prompt.select("Choose your game: ", marker: "💰") do |menu|
        self.all.each do |game|
          menu.choice "#{game.teams.join(" VS ")}"
        end
      result = menu_choice
    end
  end

  def self.get_game_by_team(choice)
    team_name = choice.split(" VS ")
    game = Game.all.where(team1: team_name[0], team2: team_name[1])[0]
  end

  def self.get_websites_and_odds_of_the_game(choice)
    game = Game.get_game_by_team(choice)
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
