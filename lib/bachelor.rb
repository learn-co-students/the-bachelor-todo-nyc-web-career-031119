require "pry"

def get_first_name_of_season_winner(data, season)
  winner = " "
  data.each do |correct_season, contestants_info|
    if correct_season == season
      contestants_info.each do |contestant|
        contestant.each do |category, personal_info|
          if category == "status" && personal_info == "Winner"
            winner = contestant["name"]
          end
        end
      end
    end
  end
  
  winner.split[0]
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants_info|
    contestants_info.each do |contestant|
      contestant.each do |category, personal_info|
        if category == "occupation" && personal_info == occupation
          return contestant["name"]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, contestants_info|
    contestants_info.each do |contestant|
      contestant.each do |category, personal_info|
        if category == "hometown" && personal_info == hometown
          counter = counter + 1
        end
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |season, contestants_info|
    contestants_info.each do |contestant|
      contestant.each do |category, personal_info|
        if category == "hometown" && personal_info == hometown
          return contestant["occupation"]
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  total_sum = 0.0
  counter = 0
  data.each do |correct_season, contestants_info|
    if correct_season == season
    contestants_info.each do |contestant|
      total_sum = total_sum + contestant["age"].to_f
      counter = counter + 1
    end
    end
  end
  (total_sum/counter).round
end
