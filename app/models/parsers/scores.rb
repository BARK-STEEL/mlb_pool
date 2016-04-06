module Parsers
  class Scores
    SCORE_CONVERTER = {"0" => "zero",
                       "1"=> "one",
                       "2" => "two",
                       "3" => "three",
                       "4" => "four",
                       "5" => "five",
                       "6" => "six",
                       "7" => "seven",
                       "8" => "eight",
                       "9" => "nine",
                       "10" => "ten",
                       "11" => "eleven",
                       "12" => "twelve"}

    def self.parse_scores
      response = new.retrieve_data
      json = JSON.parse(response.body)

      games = json["data"]["games"]["game"]

      games.each do |game|
        if game["status"]["status"] == "Final"
          home_team = game["home_team_name"]
          away_team = game["away_team_name"]
          home_score = game["linescore"]["r"]["home"]
          away_score = game["linescore"]["r"]["away"]

          pool_home_team = Team.find_by(team: home_team)
          pool_away_team = Team.find_by(team: away_team)

          if home_score.to_i < 13
            pool_home_team.update(SCORE_CONVERTER[home_score] => true)
          end

          if away_score.to_i < 13
            pool_away_team.update(SCORE_CONVERTER[away_score] => true)
          end
        end
      end
    end

    def retrieve_data
      now = Time.now
      month = now.month
      day = now.day
      day_prefix = ""
      month_prefix = ""
      if month < 10
        month_prefix = "0"
      end
      if day < 10
        day_prefix = "0"
      end
      Curl::Easy.perform("http://mlb.mlb.com/gdcross/components/game/mlb/year_2016/month_#{month_prefix}#{month}/day_#{day_prefix}#{day}/master_scoreboard.json")
    end
  end
end
