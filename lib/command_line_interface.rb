
def welcome
  puts "                     Welcome to:
  (                                 (
)\ )                          )   )\ )                  )
(()/(                 (     ( /(  (()/(               ( /(
/(_))  `  )     (    )(    )\())  /(_))   (     (    )\())
(_))    /(/(     )\  (()\  (_))/  (_))     )\    )\  ((_)\

/ __|  ((_)_\   ((_)  ((_) | |_   | |     ((_)  ((_) | |(_)
 \__ \  | '_ \) / _ \ | '_| |  _|  | |__  / _ \ / _|  | / /
|___/  | .__/  \___/ |_|    \__|  |____| \___/ \__|  |_\_\
|_|"
end

def user_input
  puts "What team's odds would you like to see?"
  team_input = gets.chomp
  team_input
end

def team_include?
  user_team = user_input
  if !Game.all_teams.include?(user_team)
    puts "Sorry your team is not playing today!! "
    team_include?
  else
    user_team
  end
end


def get_websites_and_odds_of_the_game(team_name)
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
  puts website_arr
end
