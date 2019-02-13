class CommandLineInterface

  attr_accessor :current_user_name

  def start
    welcome
    @current_user_name = ask_user_for_their_name
    check_if_user_exists(current_user_name)
  end

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


  def ask_user_for_their_name
    puts "Enter your user name"
    name = gets.chomp
  end

  def check_if_user_exists(current_user_name)
    if User.all_name.include?(current_user_name)
      account_holder_menu
    else
      puts "Hey #{current_user_name}! Would you like to create an account?\n Yes\n No"
      ans = gets.chomp.downcase
      if ans == "yes"
        puts "How much money would you like to start with?"
        user_funds = gets.chomp.to_f
        User.find_or_create_by(name: current_user_name, funds: user_funds)
        account_holder_menu
      else
        print_nonuser_list
      end
    end
  end

  def account_holder_menu
    user_ins = User.find_by(name: current_user_name)
    prompt = TTY::Prompt.new
    menu_choice = prompt.select("What would you like to do?", marker: ">") do |menu|
       menu.choice "Check out the odds and sportsbooks/Make a bet"
       menu.choice "Add funds"
       menu.choice "Check your balance"
       menu.choice "Delete your account"
       menu.choice "Contact us"
       menu.choice "Logout"
      end
    result = menu_choice

    if result == "Check out the odds and sportsbooks/Make a bet"
      team_exists = team_include?
      lists = Game.get_websites_and_odds_of_the_game(team_exists)
      puts lists
      puts "Would you like to make a bet on one of these sites?\n Yes\n No"
      input = gets.chomp.downcase
      if input == "yes"
        puts "How much would you like to risk?"
        risk_input = gets.chomp.to_f
        if risk_input > user_ins.funds
          puts "Sorry! You do not have enough funds in your account. Please add more."
          account_holder_menu
        else
          current_game_id = Game.get_game_by_team(team_exists).id
          # binding.pry
          user_ins.make_a_bet(current_game_id ,risk_input)
          user_ins.funds -= risk_input
          user_ins.save
          puts "You just placed a bet on #{team_exists}."
          puts "Your account now has $#{user_ins.funds}"
          puts "Good luck!!"
          account_holder_menu
        end
      else
        account_holder_menu
      end
    elsif result == "Add funds"
      puts "How much would you like to add?"
      amnt = gets.chomp
      user_ins.funds += amnt.to_f
      user_ins.save
      puts "Your account now has $#{user_ins.funds}."
      account_holder_menu
    elsif result == "Check your balance"
      puts "$#{user_ins.funds}"
      account_holder_menu
    elsif result == "Delete your account"
      user_ins.destroy
      puts "We are sad to see you go. Good Bye!"
    elsif result == "Contact us"
      puts "Sorry! We are busy making money! Try again later!"
      account_holder_menu
    elsif result == "Logout"
      puts "Come back soon!"
    end
  end


  def print_nonuser_list
    prompt = TTY::Prompt.new
    menu_choice = prompt.select("What would you like to do?", marker: ">") do |menu|
       menu.choice "Check out the odds and the website"
       menu.choice "Changed your mind? Create an account?"
       menu.choice "Contact us"
       menu.choice "Exit"
      end
    result = menu_choice

    if result == "Check out the odds and the website"
      team_exists = team_include?
      lists = Game.get_websites_and_odds_of_the_game(team_exists)
      puts lists
      print_nonuser_list
    elsif result == "Changed your mind? Create an account?"
      check_if_user_exists(current_user_name)
      print_nonuser_list
    elsif result == "Contact us"
      puts " Sorry! We are busy making money! Try again later!"
      print_nonuser_list
    elsif result == "Exit"
      puts "Thanks For Visiting!"
    end
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


end
