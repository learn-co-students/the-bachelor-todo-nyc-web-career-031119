require 'pry'
def get_first_name_of_season_winner(data, season)
  data.each do |season_num, value_array|
    if season_num == season
      value_array.each do |contestant|
        if contestant["status"] == "Winner"
          return contestant["name"].split(" ")[0]
          end
        end
      end
    end
  end


def get_contestant_name(data, occupation)

  data.each do |season_num, value_array|
      value_array.each do |contestant|
        if contestant["occupation"] == occupation
        return contestant["name"]
          end
        end
      end
    end

def count_contestants_by_hometown(data, hometown)
  hometown_counter = 0
  data.each do |season_num, value_array|
      value_array.each do |contestant|
        if contestant["hometown"] == hometown
        hometown_counter += 1
          end
        end
      end
    hometown_counter
end

def get_occupation(data, hometown)

  data.each do |season_num, value_array|
      value_array.each do |contestant|
        if contestant["hometown"] == hometown
        return contestant["occupation"]
          end
        end
      end
    end


def get_average_age_for_season(data, season)
  result = []
  data.each do |season_num, value_array|
    if season_num == season
      value_array.each do |contestant|
        result << contestant["age"].to_f
end
end
end
answer = result.inject(0){|sum,x| sum + x } / result.length
answer.round
end
