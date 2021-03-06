require 'rest-client'
require 'json'
require 'net/http'
require 'net/https'
require 'pry'

class ApiCommunicator

  def self.readable(url)
    response_string = RestClient.get(url)
    JSON.parse(response_string)
  end

  def self.get_hash_of_the_sport
    #make the web request
     response_hash = readable('https://api.the-odds-api.com/v3/odds?sport=icehockey_nhl&region=uk&mkt=h2h&apiKey=57c0bfae95b7cb8dc7b24729437c70f3')
  end


  def self.creating_datab
    data = self.get_hash_of_the_sport

    data["data"].each do |game_data|
      game_teams = game_data["teams"]
      new_game = Game.find_or_create_by(team1: game_teams[0], team2: game_teams[1], sport_key: "icehockey_nhl", game_date:nil)
      game_data["sites"].each do |site|
       new_website = Website.find_or_create_by(name: site["site_nice"])

       BettingOdd.find_or_create_by(website_id: new_website.id , game_id: new_game.id, odds: site["odds"]["h2h"][0..1])
      end
    end
  end



  ##################For the second API #####################
  # Request (GET )
# def send_request
#
#
#    uri = URI(https://api.mysportsfeeds.com/v2.0/pull/nhl/2018-2019-regular/date/CHANGED_TIME/games.json)
#
#    # Create client
#    http = Net::HTTP.new(uri.host, uri.port)
#    http.use_ssl = true
#    http.verify_mode = OpenSSL::SSL::VERIFY_PEER
#
#    # Create Request
#    req =  Net::HTTP::Get.new(uri)
#    # Add headers
#    req.add_field “Authorization”, “Basic ” + base64_encode(API_KEY + “:” + MYSPORTSFEEDS)
#
#    # Fetch Request
#    res = http.request(req)
#
#    puts "Response HTTP Status Code: #{res.code}"
#    puts "Response HTTP Response Body: #{res.body}"
#   rescue StandardError => e
#    puts "HTTP Request failed (#{e.message})"
#  end

end
