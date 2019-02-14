# // 20190212115350
# // https://api.the-odds-api.com/v3/odds?sport=icehockey_nhl&region=uk&mkt=h2h&apiKey=57c0bfae95b7cb8dc7b24729437c70f3

# require "pry"
#
# NHL_data = {
#   "success": true,
#   "data": [
#     {
#       "sport_key": "icehockey_nhl",
#       "sport_nice": "NHL",
#       "teams": [
#         "Buffalo Sabres",
#         "New York Islanders"
#       ],
#       "commence_time": 1550016300,
#       "home_team": "Buffalo Sabres",
#       "sites": [
#         {
#           "site_key": "unibet",
#           "site_nice": "Unibet",
#           "last_update": 1549990144,
#           "odds": {
#             "h2h": [
#               2.7,
#               2.32,
#               4
#             ]
#           }
#         },
#         {
#           "site_key": "sport888",
#           "site_nice": "888sport",
#           "last_update": 1549990266,
#           "odds": {
#             "h2h": [
#               2.7,
#               2.32,
#               4
#             ]
#           }
#         },
#         {
#           "site_key": "nordicbet",
#           "site_nice": "Nordic Bet",
#           "last_update": 1549990257,
#           "odds": {
#             "h2h": [
#               2.8,
#               2.3,
#               4
#             ]
#           }
#         },
#         {
#           "site_key": "onexbet",
#           "site_nice": "1xBet",
#           "last_update": 1549990246,
#           "odds": {
#             "h2h": [
#               2.79,
#               2.29,
#               4
#             ]
#           }
#         },
#         {
#           "site_key": "marathonbet",
#           "site_nice": "Marathon Bet",
#           "last_update": 1549990143,
#           "odds": {
#             "h2h": [
#               2.8,
#               2.27,
#               4
#             ]
#           }
#         },
#         {
#           "site_key": "ladbrokes",
#           "site_nice": "Ladbrokes",
#           "last_update": 1549990344,
#           "odds": {
#             "h2h": [
#               2.1,
#               1.75
#             ]
#           }
#         },
#         {
#           "site_key": "betvictor",
#           "site_nice": "Bet Victor",
#           "last_update": 1549990403,
#           "odds": {
#             "h2h": [
#               2,
#               1.75
#             ]
#           }
#         },
#         {
#           "site_key": "betfred",
#           "site_nice": "Betfred",
#           "last_update": 1549990386,
#           "odds": {
#             "h2h": [
#               2.7,
#               2.25,
#               3.8
#             ]
#           }
#         },
#         {
#           "site_key": "williamhill",
#           "site_nice": "William Hill",
#           "last_update": 1549990301,
#           "odds": {
#             "h2h": [
#               2.05,
#               1.8
#             ]
#           }
#         },
#         {
#           "site_key": "paddypower",
#           "site_nice": "Paddy Power",
#           "last_update": 1549990038,
#           "odds": {
#             "h2h": [
#               2.6,
#               2.1,
#               3.75
#             ]
#           }
#         },
#         {
#           "site_key": "betfair",
#           "site_nice": "Betfair",
#           "last_update": 1549990224,
#           "odds": {
#             "h2h": [
#               2.1,
#               1.86
#             ]
#           }
#         }
#       ],
#       "sites_count": 11
#     },
#     {
#       "sport_key": "icehockey_nhl",
#       "sport_nice": "NHL",
#       "teams": [
#         "Dallas Stars",
#         "Florida Panthers"
#       ],
#       "commence_time": 1550016300,
#       "home_team": "Florida Panthers",
#       "sites": [
#         {
#           "site_key": "unibet",
#           "site_nice": "Unibet",
#           "last_update": 1549990144,
#           "odds": {
#             "h2h": [
#               2.63,
#               2.35,
#               4
#             ]
#           }
#         },
#         {
#           "site_key": "sport888",
#           "site_nice": "888sport",
#           "last_update": 1549990266,
#           "odds": {
#             "h2h": [
#               2.63,
#               2.35,
#               4
#             ]
#           }
#         },
#         {
#           "site_key": "nordicbet",
#           "site_nice": "Nordic Bet",
#           "last_update": 1549990257,
#           "odds": {
#             "h2h": [
#               2.6,
#               2.39,
#               4.05
#             ]
#           }
#         },
#         {
#           "site_key": "onexbet",
#           "site_nice": "1xBet",
#           "last_update": 1549990246,
#           "odds": {
#             "h2h": [
#               2.6,
#               2.44,
#               4
#             ]
#           }
#         },
#         {
#           "site_key": "marathonbet",
#           "site_nice": "Marathon Bet",
#           "last_update": 1549990143,
#           "odds": {
#             "h2h": [
#               2.6,
#               2.42,
#               4
#             ]
#           }
#         },
#         {
#           "site_key": "ladbrokes",
#           "site_nice": "Ladbrokes",
#           "last_update": 1549990344,
#           "odds": {
#             "h2h": [
#               1.95,
#               1.87
#             ]
#           }
#         },
#         {
#           "site_key": "betvictor",
#           "site_nice": "Bet Victor",
#           "last_update": 1549990403,
#           "odds": {
#             "h2h": [
#               1.95,
#               1.83
#             ]
#           }
#         },
#         {
#           "site_key": "betfred",
#           "site_nice": "Betfred",
#           "last_update": 1549990386,
#           "odds": {
#             "h2h": [
#               2.63,
#               2.3,
#               4
#             ]
#           }
#         },
#         {
#           "site_key": "williamhill",
#           "site_nice": "William Hill",
#           "last_update": 1549990301,
#           "odds": {
#             "h2h": [
#               1.95,
#               1.86
#             ]
#           }
#         },
#         {
#           "site_key": "paddypower",
#           "site_nice": "Paddy Power",
#           "last_update": 1549990038,
#           "odds": {
#             "h2h": [
#               2.4,
#               2.3,
#               3.75
#             ]
#           }
#         },
#         {
#           "site_key": "betfair",
#           "site_nice": "Betfair",
#           "last_update": 1549990224,
#           "odds": {
#             "h2h": [
#               2.02,
#               1.93
#             ]
#           }
#         }
#       ],
#       "sites_count": 11
#     },
#     {
#       "sport_key": "icehockey_nhl",
#       "sport_nice": "NHL",
#       "teams": [
#         "Columbus Blue Jackets",
#         "Washington Capitals"
#       ],
#       "commence_time": 1550016300,
#       "home_team": "Columbus Blue Jackets",
#       "sites": [
#         {
#           "site_key": "unibet",
#           "site_nice": "Unibet",
#           "last_update": 1549990144,
#           "odds": {
#             "h2h": [
#               2.08,
#               3.1,
#               4
#             ]
#           }
#         },
#         {
#           "site_key": "sport888",
#           "site_nice": "888sport",
#           "last_update": 1549990266,
#           "odds": {
#             "h2h": [
#               2.08,
#               3.1,
#               4
#             ]
#           }
#         },
#         {
#           "site_key": "nordicbet",
#           "site_nice": "Nordic Bet",
#           "last_update": 1549990257,
#           "odds": {
#             "h2h": [
#               2.1,
#               3,
#               4.3
#             ]
#           }
#         },
#         {
#           "site_key": "onexbet",
#           "site_nice": "1xBet",
#           "last_update": 1549990246,
#           "odds": {
#             "h2h": [
#               2.12,
#               3.03,
#               4.14
#             ]
#           }
#         },
#         {
#           "site_key": "marathonbet",
#           "site_nice": "Marathon Bet",
#           "last_update": 1549990143,
#           "odds": {
#             "h2h": [
#               2.1,
#               3.04,
#               4.15
#             ]
#           }
#         },
#         {
#           "site_key": "ladbrokes",
#           "site_nice": "Ladbrokes",
#           "last_update": 1549990344,
#           "odds": {
#             "h2h": [
#               1.67,
#               2.25
#             ]
#           }
#         },
#         {
#           "site_key": "betvictor",
#           "site_nice": "Bet Victor",
#           "last_update": 1549990403,
#           "odds": {
#             "h2h": [
#               1.65,
#               2.2
#             ]
#           }
#         },
#         {
#           "site_key": "betfred",
#           "site_nice": "Betfred",
#           "last_update": 1549990386,
#           "odds": {
#             "h2h": [
#               2.05,
#               2.88,
#               4.2
#             ]
#           }
#         },
#         {
#           "site_key": "williamhill",
#           "site_nice": "William Hill",
#           "last_update": 1549990301,
#           "odds": {
#             "h2h": [
#               1.68,
#               2.25
#             ]
#           }
#         },
#         {
#           "site_key": "paddypower",
#           "site_nice": "Paddy Power",
#           "last_update": 1549990038,
#           "odds": {
#             "h2h": [
#               1.91,
#               2.8,
#               4
#             ]
#           }
#         },
#         {
#           "site_key": "betfair",
#           "site_nice": "Betfair",
#           "last_update": 1549990224,
#           "odds": {
#             "h2h": [
#               1.71,
#               2.3
#             ]
#           }
#         }
#       ],
#       "sites_count": 11
#     },
#     {
#       "sport_key": "icehockey_nhl",
#       "sport_nice": "NHL",
#       "teams": [
#         "Boston Bruins",
#         "Chicago Blackhawks"
#       ],
#       "commence_time": 1550016300,
#       "home_team": "Boston Bruins",
#       "sites": [
#         {
#           "site_key": "unibet",
#           "site_nice": "Unibet",
#           "last_update": 1549990144,
#           "odds": {
#             "h2h": [
#               1.87,
#               3.6,
#               4.2
#             ]
#           }
#         },
#         {
#           "site_key": "sport888",
#           "site_nice": "888sport",
#           "last_update": 1549990266,
#           "odds": {
#             "h2h": [
#               1.87,
#               3.6,
#               4.2
#             ]
#           }
#         },
#         {
#           "site_key": "nordicbet",
#           "site_nice": "Nordic Bet",
#           "last_update": 1549990257,
#           "odds": {
#             "h2h": [
#               1.86,
#               3.65,
#               4.3
#             ]
#           }
#         },
#         {
#           "site_key": "onexbet",
#           "site_nice": "1xBet",
#           "last_update": 1549990246,
#           "odds": {
#             "h2h": [
#               1.85,
#               3.9,
#               4.04
#             ]
#           }
#         },
#         {
#           "site_key": "marathonbet",
#           "site_nice": "Marathon Bet",
#           "last_update": 1549990143,
#           "odds": {
#             "h2h": [
#               1.83,
#               3.94,
#               4.05
#             ]
#           }
#         },
#         {
#           "site_key": "ladbrokes",
#           "site_nice": "Ladbrokes",
#           "last_update": 1549990344,
#           "odds": {
#             "h2h": [
#               1.44,
#               2.8
#             ]
#           }
#         },
#         {
#           "site_key": "betvictor",
#           "site_nice": "Bet Victor",
#           "last_update": 1549990403,
#           "odds": {
#             "h2h": [
#               1.45,
#               2.63
#             ]
#           }
#         },
#         {
#           "site_key": "betfred",
#           "site_nice": "Betfred",
#           "last_update": 1549990386,
#           "odds": {
#             "h2h": [
#               1.77,
#               3.6,
#               4.33
#             ]
#           }
#         },
#         {
#           "site_key": "williamhill",
#           "site_nice": "William Hill",
#           "last_update": 1549990301,
#           "odds": {
#             "h2h": [
#               1.47,
#               2.75
#             ]
#           }
#         },
#         {
#           "site_key": "betfair",
#           "site_nice": "Betfair",
#           "last_update": 1549990224,
#           "odds": {
#             "h2h": [
#               1.51,
#               2.82
#             ]
#           }
#         }
#       ],
#       "sites_count": 10
#     },
#     {
#       "sport_key": "icehockey_nhl",
#       "sport_nice": "NHL",
#       "teams": [
#         "Carolina Hurricanes",
#         "Ottawa Senators"
#       ],
#       "commence_time": 1550018100,
#       "home_team": "Ottawa Senators",
#       "sites": [
#         {
#           "site_key": "unibet",
#           "site_nice": "Unibet",
#           "last_update": 1549990144,
#           "odds": {
#             "h2h": [
#               2.1,
#               2.95,
#               4.2
#             ]
#           }
#         },
#         {
#           "site_key": "sport888",
#           "site_nice": "888sport",
#           "last_update": 1549990266,
#           "odds": {
#             "h2h": [
#               2.1,
#               2.95,
#               4.2
#             ]
#           }
#         },
#         {
#           "site_key": "nordicbet",
#           "site_nice": "Nordic Bet",
#           "last_update": 1549990257,
#           "odds": {
#             "h2h": [
#               2.09,
#               3,
#               4.25
#             ]
#           }
#         },
#         {
#           "site_key": "onexbet",
#           "site_nice": "1xBet",
#           "last_update": 1549990246,
#           "odds": {
#             "h2h": [
#               2.12,
#               3.06,
#               4.04
#             ]
#           }
#         },
#         {
#           "site_key": "marathonbet",
#           "site_nice": "Marathon Bet",
#           "last_update": 1549990143,
#           "odds": {
#             "h2h": [
#               2.1,
#               3.08,
#               4.05
#             ]
#           }
#         },
#         {
#           "site_key": "ladbrokes",
#           "site_nice": "Ladbrokes",
#           "last_update": 1549990344,
#           "odds": {
#             "h2h": [
#               1.67,
#               2.25
#             ]
#           }
#         },
#         {
#           "site_key": "betvictor",
#           "site_nice": "Bet Victor",
#           "last_update": 1549990403,
#           "odds": {
#             "h2h": [
#               1.65,
#               2.25
#             ]
#           }
#         },
#         {
#           "site_key": "betfred",
#           "site_nice": "Betfred",
#           "last_update": 1549990386,
#           "odds": {
#             "h2h": [
#               2.05,
#               2.88,
#               4.2
#             ]
#           }
#         },
#         {
#           "site_key": "williamhill",
#           "site_nice": "William Hill",
#           "last_update": 1549990301,
#           "odds": {
#             "h2h": [
#               1.68,
#               2.25
#             ]
#           }
#         },
#         {
#           "site_key": "paddypower",
#           "site_nice": "Paddy Power",
#           "last_update": 1549990038,
#           "odds": {
#             "h2h": [
#               1.91,
#               2.8,
#               4
#             ]
#           }
#         },
#         {
#           "site_key": "betfair",
#           "site_nice": "Betfair",
#           "last_update": 1549990224,
#           "odds": {
#             "h2h": [
#               1.73,
#               2.34
#             ]
#           }
#         }
#       ],
#       "sites_count": 11
#     },
#     {
#       "sport_key": "icehockey_nhl",
#       "sport_nice": "NHL",
#       "teams": [
#         "Calgary Flames",
#         "Tampa Bay Lightning"
#       ],
#       "commence_time": 1550018100,
#       "home_team": "Tampa Bay Lightning",
#       "sites": [
#         {
#           "site_key": "unibet",
#           "site_nice": "Unibet",
#           "last_update": 1549990144,
#           "odds": {
#             "h2h": [
#               3.15,
#               2,
#               4.2
#             ]
#           }
#         },
#         {
#           "site_key": "sport888",
#           "site_nice": "888sport",
#           "last_update": 1549990266,
#           "odds": {
#             "h2h": [
#               3.15,
#               2,
#               4.2
#             ]
#           }
#         },
#         {
#           "site_key": "nordicbet",
#           "site_nice": "Nordic Bet",
#           "last_update": 1549990257,
#           "odds": {
#             "h2h": [
#               3.15,
#               1.99,
#               4.45
#             ]
#           }
#         },
#         {
#           "site_key": "onexbet",
#           "site_nice": "1xBet",
#           "last_update": 1549990246,
#           "odds": {
#             "h2h": [
#               3.24,
#               2.06,
#               4
#             ]
#           }
#         },
#         {
#           "site_key": "marathonbet",
#           "site_nice": "Marathon Bet",
#           "last_update": 1549990143,
#           "odds": {
#             "h2h": [
#               3.26,
#               2.04,
#               4
#             ]
#           }
#         },
#         {
#           "site_key": "ladbrokes",
#           "site_nice": "Ladbrokes",
#           "last_update": 1549990344,
#           "odds": {
#             "h2h": [
#               2.35,
#               1.62
#             ]
#           }
#         },
#         {
#           "site_key": "betvictor",
#           "site_nice": "Bet Victor",
#           "last_update": 1549990403,
#           "odds": {
#             "h2h": [
#               2.3,
#               1.6
#             ]
#           }
#         },
#         {
#           "site_key": "williamhill",
#           "site_nice": "William Hill",
#           "last_update": 1549990301,
#           "odds": {
#             "h2h": [
#               2.35,
#               1.63
#             ]
#           }
#         },
#         {
#           "site_key": "paddypower",
#           "site_nice": "Paddy Power",
#           "last_update": 1549990038,
#           "odds": {
#             "h2h": [
#               2.88,
#               1.91,
#               4.2
#             ]
#           }
#         },
#         {
#           "site_key": "betfair",
#           "site_nice": "Betfair",
#           "last_update": 1549990224,
#           "odds": {
#             "h2h": [
#               2.38,
#               1.69
#             ]
#           }
#         },
#         {
#           "site_key": "betfred",
#           "site_nice": "Betfred",
#           "last_update": 1549990386,
#           "odds": {
#             "h2h": [
#               3.1,
#               1.91,
#               4.33
#             ]
#           }
#         }
#       ],
#       "sites_count": 11
#     },
#     {
#       "sport_key": "icehockey_nhl",
#       "sport_nice": "NHL",
#       "teams": [
#         "Minnesota Wild",
#         "Philadelphia Flyers"
#       ],
#       "commence_time": 1550019900,
#       "home_team": "Minnesota Wild",
#       "sites": [
#         {
#           "site_key": "unibet",
#           "site_nice": "Unibet",
#           "last_update": 1549990144,
#           "odds": {
#             "h2h": [
#               2.08,
#               3.05,
#               4
#             ]
#           }
#         },
#         {
#           "site_key": "sport888",
#           "site_nice": "888sport",
#           "last_update": 1549990266,
#           "odds": {
#             "h2h": [
#               2.08,
#               3.05,
#               4
#             ]
#           }
#         },
#         {
#           "site_key": "nordicbet",
#           "site_nice": "Nordic Bet",
#           "last_update": 1549990257,
#           "odds": {
#             "h2h": [
#               2.01,
#               3.25,
#               4.2
#             ]
#           }
#         },
#         {
#           "site_key": "onexbet",
#           "site_nice": "1xBet",
#           "last_update": 1549990246,
#           "odds": {
#             "h2h": [
#               2.04,
#               3.22,
#               4.1
#             ]
#           }
#         },
#         {
#           "site_key": "marathonbet",
#           "site_nice": "Marathon Bet",
#           "last_update": 1549990143,
#           "odds": {
#             "h2h": [
#               2.02,
#               3.24,
#               4.1
#             ]
#           }
#         },
#         {
#           "site_key": "betvictor",
#           "site_nice": "Bet Victor",
#           "last_update": 1549990403,
#           "odds": {
#             "h2h": [
#               1.61,
#               2.3
#             ]
#           }
#         },
#         {
#           "site_key": "ladbrokes",
#           "site_nice": "Ladbrokes",
#           "last_update": 1549990344,
#           "odds": {
#             "h2h": [
#               1.57,
#               2.4
#             ]
#           }
#         },
#         {
#           "site_key": "betfred",
#           "site_nice": "Betfred",
#           "last_update": 1549990386,
#           "odds": {
#             "h2h": [
#               2,
#               3.1,
#               4
#             ]
#           }
#         },
#         {
#           "site_key": "williamhill",
#           "site_nice": "William Hill",
#           "last_update": 1549990301,
#           "odds": {
#             "h2h": [
#               1.61,
#               2.4
#             ]
#           }
#         },
#         {
#           "site_key": "paddypower",
#           "site_nice": "Paddy Power",
#           "last_update": 1549990038,
#           "odds": {
#             "h2h": [
#               1.61,
#               2.4
#             ]
#           }
#         },
#         {
#           "site_key": "betfair",
#           "site_nice": "Betfair",
#           "last_update": 1549990224,
#           "odds": {
#             "h2h": [
#               1.65,
#               2.46
#             ]
#           }
#         }
#       ],
#       "sites_count": 11
#     },
#     {
#       "sport_key": "icehockey_nhl",
#       "sport_nice": "NHL",
#       "teams": [
#         "Detroit Red Wings",
#         "Nashville Predators"
#       ],
#       "commence_time": 1550019900,
#       "home_team": "Nashville Predators",
#       "sites": [
#         {
#           "site_key": "unibet",
#           "site_nice": "Unibet",
#           "last_update": 1549990144,
#           "odds": {
#             "h2h": [
#               4.2,
#               1.73,
#               4.25
#             ]
#           }
#         },
#         {
#           "site_key": "sport888",
#           "site_nice": "888sport",
#           "last_update": 1549990266,
#           "odds": {
#             "h2h": [
#               4.2,
#               1.73,
#               4.25
#             ]
#           }
#         },
#         {
#           "site_key": "nordicbet",
#           "site_nice": "Nordic Bet",
#           "last_update": 1549990257,
#           "odds": {
#             "h2h": [
#               4.25,
#               1.69,
#               4.65
#             ]
#           }
#         },
#         {
#           "site_key": "onexbet",
#           "site_nice": "1xBet",
#           "last_update": 1549990246,
#           "odds": {
#             "h2h": [
#               4.36,
#               1.66,
#               4.7
#             ]
#           }
#         },
#         {
#           "site_key": "marathonbet",
#           "site_nice": "Marathon Bet",
#           "last_update": 1549990143,
#           "odds": {
#             "h2h": [
#               4.45,
#               1.64,
#               4.7
#             ]
#           }
#         },
#         {
#           "site_key": "betvictor",
#           "site_nice": "Bet Victor",
#           "last_update": 1549990403,
#           "odds": {
#             "h2h": [
#               2.88,
#               1.4
#             ]
#           }
#         },
#         {
#           "site_key": "ladbrokes",
#           "site_nice": "Ladbrokes",
#           "last_update": 1549990344,
#           "odds": {
#             "h2h": [
#               3,
#               1.4
#             ]
#           }
#         },
#         {
#           "site_key": "betfred",
#           "site_nice": "Betfred",
#           "last_update": 1549990386,
#           "odds": {
#             "h2h": [
#               4,
#               1.67,
#               4.4
#             ]
#           }
#         },
#         {
#           "site_key": "williamhill",
#           "site_nice": "William Hill",
#           "last_update": 1549990301,
#           "odds": {
#             "h2h": [
#               2.9,
#               1.43
#             ]
#           }
#         },
#         {
#           "site_key": "paddypower",
#           "site_nice": "Paddy Power",
#           "last_update": 1549990038,
#           "odds": {
#             "h2h": [
#               3,
#               1.42
#             ]
#           }
#         },
#         {
#           "site_key": "betfair",
#           "site_nice": "Betfair",
#           "last_update": 1549990224,
#           "odds": {
#             "h2h": [
#               3.05,
#               1.45
#             ]
#           }
#         }
#       ],
#       "sites_count": 11
#     },
#     {
#       "sport_key": "icehockey_nhl",
#       "sport_nice": "NHL",
#       "teams": [
#         "New Jersey Devils",
#         "St Louis Blues"
#       ],
#       "commence_time": 1550019900,
#       "home_team": "St Louis Blues",
#       "sites": [
#         {
#           "site_key": "unibet",
#           "site_nice": "Unibet",
#           "last_update": 1549990144,
#           "odds": {
#             "h2h": [
#               3.9,
#               1.79,
#               4.2
#             ]
#           }
#         },
#         {
#           "site_key": "nordicbet",
#           "site_nice": "Nordic Bet",
#           "last_update": 1549990257,
#           "odds": {
#             "h2h": [
#               4.15,
#               1.73,
#               4.45
#             ]
#           }
#         },
#         {
#           "site_key": "onexbet",
#           "site_nice": "1xBet",
#           "last_update": 1549990246,
#           "odds": {
#             "h2h": [
#               4.24,
#               1.72,
#               4.44
#             ]
#           }
#         },
#         {
#           "site_key": "ladbrokes",
#           "site_nice": "Ladbrokes",
#           "last_update": 1549990344,
#           "odds": {
#             "h2h": [
#               2.88,
#               1.44
#             ]
#           }
#         },
#         {
#           "site_key": "williamhill",
#           "site_nice": "William Hill",
#           "last_update": 1549990301,
#           "odds": {
#             "h2h": [
#               2.85,
#               1.44
#             ]
#           }
#         },
#         {
#           "site_key": "paddypower",
#           "site_nice": "Paddy Power",
#           "last_update": 1549990038,
#           "odds": {
#             "h2h": [
#               2.9,
#               1.43
#             ]
#           }
#         },
#         {
#           "site_key": "betfair",
#           "site_nice": "Betfair",
#           "last_update": 1549990224,
#           "odds": {
#             "h2h": [
#               2.96,
#               1.48
#             ]
#           }
#         }
#       ],
#       "sites_count": 7
#     },
#     {
#       "sport_key": "icehockey_nhl",
#       "sport_nice": "NHL",
#       "teams": [
#         "New York Rangers",
#         "Winnipeg Jets"
#       ],
#       "commence_time": 1550019900,
#       "home_team": "Winnipeg Jets",
#       "sites": [
#         {
#           "site_key": "unibet",
#           "site_nice": "Unibet",
#           "last_update": 1549990144,
#           "odds": {
#             "h2h": [
#               3.85,
#               1.81,
#               4.2
#             ]
#           }
#         },
#         {
#           "site_key": "nordicbet",
#           "site_nice": "Nordic Bet",
#           "last_update": 1549990257,
#           "odds": {
#             "h2h": [
#               3.85,
#               1.75,
#               4.65
#             ]
#           }
#         },
#         {
#           "site_key": "sport888",
#           "site_nice": "888sport",
#           "last_update": 1549990266,
#           "odds": {
#             "h2h": [
#               3.85,
#               1.81,
#               4.2
#             ]
#           }
#         },
#         {
#           "site_key": "onexbet",
#           "site_nice": "1xBet",
#           "last_update": 1549990246,
#           "odds": {
#             "h2h": [
#               3.78,
#               1.82,
#               4.34
#             ]
#           }
#         },
#         {
#           "site_key": "marathonbet",
#           "site_nice": "Marathon Bet",
#           "last_update": 1549990143,
#           "odds": {
#             "h2h": [
#               3.82,
#               1.8,
#               4.35
#             ]
#           }
#         },
#         {
#           "site_key": "betvictor",
#           "site_nice": "Bet Victor",
#           "last_update": 1549990403,
#           "odds": {
#             "h2h": [
#               2.7,
#               1.45
#             ]
#           }
#         },
#         {
#           "site_key": "ladbrokes",
#           "site_nice": "Ladbrokes",
#           "last_update": 1549990344,
#           "odds": {
#             "h2h": [
#               2.8,
#               1.44
#             ]
#           }
#         },
#         {
#           "site_key": "betfred",
#           "site_nice": "Betfred",
#           "last_update": 1549990386,
#           "odds": {
#             "h2h": [
#               3.75,
#               1.73,
#               4.4
#             ]
#           }
#         },
#         {
#           "site_key": "williamhill",
#           "site_nice": "William Hill",
#           "last_update": 1549990301,
#           "odds": {
#             "h2h": [
#               2.75,
#               1.47
#             ]
#           }
#         },
#         {
#           "site_key": "paddypower",
#           "site_nice": "Paddy Power",
#           "last_update": 1549990038,
#           "odds": {
#             "h2h": [
#               3.5,
#               1.67,
#               4.33
#             ]
#           }
#         },
#         {
#           "site_key": "betfair",
#           "site_nice": "Betfair",
#           "last_update": 1549990224,
#           "odds": {
#             "h2h": [
#               2.88,
#               1.51
#             ]
#           }
#         }
#       ],
#       "sites_count": 11
#     },
#     {
#       "sport_key": "icehockey_nhl",
#       "sport_nice": "NHL",
#       "teams": [
#         "Colorado Avalanche",
#         "Toronto Maple Leafs"
#       ],
#       "commence_time": 1550023500,
#       "home_team": "Colorado Avalanche",
#       "sites": [
#         {
#           "site_key": "unibet",
#           "site_nice": "Unibet",
#           "last_update": 1549990144,
#           "odds": {
#             "h2h": [
#               2.8,
#               2.16,
#               4.25
#             ]
#           }
#         },
#         {
#           "site_key": "nordicbet",
#           "site_nice": "Nordic Bet",
#           "last_update": 1549990257,
#           "odds": {
#             "h2h": [
#               2.85,
#               2.16,
#               4.3
#             ]
#           }
#         },
#         {
#           "site_key": "sport888",
#           "site_nice": "888sport",
#           "last_update": 1549990266,
#           "odds": {
#             "h2h": [
#               2.8,
#               2.16,
#               4.25
#             ]
#           }
#         },
#         {
#           "site_key": "onexbet",
#           "site_nice": "1xBet",
#           "last_update": 1549990246,
#           "odds": {
#             "h2h": [
#               2.88,
#               2.2,
#               4.14
#             ]
#           }
#         },
#         {
#           "site_key": "marathonbet",
#           "site_nice": "Marathon Bet",
#           "last_update": 1549990143,
#           "odds": {
#             "h2h": [
#               2.88,
#               2.18,
#               4.15
#             ]
#           }
#         },
#         {
#           "site_key": "ladbrokes",
#           "site_nice": "Ladbrokes",
#           "last_update": 1549990344,
#           "odds": {
#             "h2h": [
#               2.15,
#               1.73
#             ]
#           }
#         },
#         {
#           "site_key": "betvictor",
#           "site_nice": "Bet Victor",
#           "last_update": 1549990403,
#           "odds": {
#             "h2h": [
#               2.1,
#               1.7
#             ]
#           }
#         },
#         {
#           "site_key": "williamhill",
#           "site_nice": "William Hill",
#           "last_update": 1549990301,
#           "odds": {
#             "h2h": [
#               2.15,
#               1.74
#             ]
#           }
#         },
#         {
#           "site_key": "paddypower",
#           "site_nice": "Paddy Power",
#           "last_update": 1549990038,
#           "odds": {
#             "h2h": [
#               2.15,
#               1.73
#             ]
#           }
#         },
#         {
#           "site_key": "betfair",
#           "site_nice": "Betfair",
#           "last_update": 1549990224,
#           "odds": {
#             "h2h": [
#               2.18,
#               1.79
#             ]
#           }
#         },
#         {
#           "site_key": "betfred",
#           "site_nice": "Betfred",
#           "last_update": 1549990386,
#           "odds": {
#             "h2h": [
#               2.8,
#               2.1,
#               4.2
#             ]
#           }
#         }
#       ],
#       "sites_count": 11
#     },
#     {
#       "sport_key": "icehockey_nhl",
#       "sport_nice": "NHL",
#       "teams": [
#         "Arizona Coyotes",
#         "Vegas Golden Knights"
#       ],
#       "commence_time": 1550027100,
#       "home_team": "Vegas Golden Knights",
#       "sites": [
#         {
#           "site_key": "paddypower",
#           "site_nice": "Paddy Power",
#           "last_update": 1549990038,
#           "odds": {
#             "h2h": [
#               3.75,
#               1.62,
#               4.2
#             ]
#           }
#         },
#         {
#           "site_key": "betfred",
#           "site_nice": "Betfred",
#           "last_update": 1549990386,
#           "odds": {
#             "h2h": [
#               4.2,
#               1.61,
#               4.4
#             ]
#           }
#         },
#         {
#           "site_key": "marathonbet",
#           "site_nice": "Marathon Bet",
#           "last_update": 1549990143,
#           "odds": {
#             "h2h": [
#               4.5,
#               1.67,
#               4.45
#             ]
#           }
#         },
#         {
#           "site_key": "ladbrokes",
#           "site_nice": "Ladbrokes",
#           "last_update": 1549990344,
#           "odds": {
#             "h2h": [
#               3,
#               1.4
#             ]
#           }
#         },
#         {
#           "site_key": "williamhill",
#           "site_nice": "William Hill",
#           "last_update": 1549990301,
#           "odds": {
#             "h2h": [
#               2.95,
#               1.4
#             ]
#           }
#         },
#         {
#           "site_key": "onexbet",
#           "site_nice": "1xBet",
#           "last_update": 1549990246,
#           "odds": {
#             "h2h": [
#               4.42,
#               1.69,
#               4.44
#             ]
#           }
#         },
#         {
#           "site_key": "betvictor",
#           "site_nice": "Bet Victor",
#           "last_update": 1549990403,
#           "odds": {
#             "h2h": [
#               2.9,
#               1.4
#             ]
#           }
#         },
#         {
#           "site_key": "nordicbet",
#           "site_nice": "Nordic Bet",
#           "last_update": 1549990257,
#           "odds": {
#             "h2h": [
#               4.4,
#               1.66,
#               4.7
#             ]
#           }
#         },
#         {
#           "site_key": "betfair",
#           "site_nice": "Betfair",
#           "last_update": 1549990224,
#           "odds": {
#             "h2h": [
#               3,
#               1.44
#             ]
#           }
#         },
#         {
#           "site_key": "unibet",
#           "site_nice": "Unibet",
#           "last_update": 1549990144,
#           "odds": {
#             "h2h": [
#               4.35,
#               1.71,
#               4.2
#             ]
#           }
#         },
#         {
#           "site_key": "sport888",
#           "site_nice": "888sport",
#           "last_update": 1549990266,
#           "odds": {
#             "h2h": [
#               4.35,
#               1.71,
#               4.2
#             ]
#           }
#         }
#       ],
#       "sites_count": 11
#     },
#     {
#       "sport_key": "icehockey_nhl",
#       "sport_nice": "NHL",
#       "teams": [
#         "Edmonton Oilers",
#         "Pittsburgh Penguins"
#       ],
#       "commence_time": 1550106000,
#       "home_team": "Pittsburgh Penguins",
#       "sites": [
#         {
#           "site_key": "unibet",
#           "site_nice": "Unibet",
#           "last_update": 1549990144,
#           "odds": {
#             "h2h": [
#               3.7,
#               1.85,
#               4.1
#             ]
#           }
#         },
#         {
#           "site_key": "nordicbet",
#           "site_nice": "Nordic Bet",
#           "last_update": 1549990257,
#           "odds": {
#             "h2h": [
#               3.55,
#               1.85,
#               4.45
#             ]
#           }
#         },
#         {
#           "site_key": "onexbet",
#           "site_nice": "1xBet",
#           "last_update": 1549990246,
#           "odds": {
#             "h2h": [
#               3.52,
#               1.89,
#               4.32
#             ]
#           }
#         },
#         {
#           "site_key": "sport888",
#           "site_nice": "888sport",
#           "last_update": 1549990266,
#           "odds": {
#             "h2h": [
#               3.7,
#               1.85,
#               4.1
#             ]
#           }
#         },
#         {
#           "site_key": "betvictor",
#           "site_nice": "Bet Victor",
#           "last_update": 1549990403,
#           "odds": {
#             "h2h": [
#               2.5,
#               1.53
#             ]
#           }
#         },
#         {
#           "site_key": "ladbrokes",
#           "site_nice": "Ladbrokes",
#           "last_update": 1549990344,
#           "odds": {
#             "h2h": [
#               2.63,
#               1.5
#             ]
#           }
#         },
#         {
#           "site_key": "marathonbet",
#           "site_nice": "Marathon Bet",
#           "last_update": 1549990143,
#           "odds": {
#             "h2h": [
#               3.55,
#               1.87,
#               4.33
#             ]
#           }
#         },
#         {
#           "site_key": "betfred",
#           "site_nice": "Betfred",
#           "last_update": 1549990386,
#           "odds": {
#             "h2h": [
#               3.4,
#               1.83,
#               4.33
#             ]
#           }
#         }
#       ],
#       "sites_count": 8
#     },
#     {
#       "sport_key": "icehockey_nhl",
#       "sport_nice": "NHL",
#       "teams": [
#         "Anaheim Ducks",
#         "Vancouver Canucks"
#       ],
#       "commence_time": 1550115000,
#       "home_team": "Anaheim Ducks",
#       "sites": [
#         {
#           "site_key": "unibet",
#           "site_nice": "Unibet",
#           "last_update": 1549990144,
#           "odds": {
#             "h2h": [
#               2.4,
#               2.55,
#               4
#             ]
#           }
#         },
#         {
#           "site_key": "nordicbet",
#           "site_nice": "Nordic Bet",
#           "last_update": 1549990257,
#           "odds": {
#             "h2h": [
#               2.39,
#               2.55,
#               4.15
#             ]
#           }
#         },
#         {
#           "site_key": "onexbet",
#           "site_nice": "1xBet",
#           "last_update": 1549990246,
#           "odds": {
#             "h2h": [
#               2.38,
#               2.7,
#               3.96
#             ]
#           }
#         },
#         {
#           "site_key": "sport888",
#           "site_nice": "888sport",
#           "last_update": 1549990266,
#           "odds": {
#             "h2h": [
#               2.4,
#               2.55,
#               4
#             ]
#           }
#         },
#         {
#           "site_key": "betvictor",
#           "site_nice": "Bet Victor",
#           "last_update": 1549990403,
#           "odds": {
#             "h2h": [
#               1.83,
#               1.95
#             ]
#           }
#         },
#         {
#           "site_key": "marathonbet",
#           "site_nice": "Marathon Bet",
#           "last_update": 1549990143,
#           "odds": {
#             "h2h": [
#               2.36,
#               2.7,
#               3.96
#             ]
#           }
#         },
#         {
#           "site_key": "ladbrokes",
#           "site_nice": "Ladbrokes",
#           "last_update": 1549990344,
#           "odds": {
#             "h2h": [
#               1.83,
#               2
#             ]
#           }
#         },
#         {
#           "site_key": "betfred",
#           "site_nice": "Betfred",
#           "last_update": 1549990386,
#           "odds": {
#             "h2h": [
#               2.4,
#               2.5,
#               4
#             ]
#           }
#         }
#       ],
#       "sites_count": 8
#     }
#   ]
# }
#
#
# NHL_data[:data].each do |game_data|
#   game_teams = game_data[:teams]
#   # team1 = Team.find_or_create_by(name: game_teams[0])
#   new_game = Game.find_or_create_by(team1: game_teams[0], team2: game_teams[1], sport_key: "icehockey_nhl", game_date:nil)
#   game_data[:sites].each do |site|
#    new_website = Website.find_or_create_by(name: site[:site_nice])
#
#    BettingOdd.find_or_create_by(website_id: new_website.id , game_id: new_game.id, odds: site[:odds][:h2h][0..1])
#   end
#
# end
