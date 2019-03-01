require 'pry'
def get_first_name_of_season_winner(data, season)
  winner = 0
  data.each do |seasons, contestants|
    if season == seasons
      contestants.each_with_index do |people, index|
        people.each do  |spec,value|
          if value == "Winner"
            winner = data[seasons][index]["name"]
        end
      end
    end
  end
end
winner = winner.split
winner[0]
end

def get_contestant_name(data, occupation)
  winner = 0
  data.each do |seasons, contestants|
      contestants.each_with_index do |people, index|
        people.each do  |spec,value|
          if value == occupation
            winner = data[seasons][index]["name"]
        end
      end
    end
  end

winner
end

def count_contestants_by_hometown(data, hometown)
  hometown_count = 0
  data.each do |seasons, contestants|
      contestants.each_with_index do |people, index|
        people.each do  |spec,value|
          if value == hometown
            hometown_count += 1
          end
        end
      end
    end
  hometown_count
end

def get_occupation(data, hometown)
  answer = nil
  data.each do |seasons, contestants|
      contestants.each_with_index do |people, index|
        people.each do  |spec,value|
          if value == hometown && answer == nil
            answer = data[seasons][index]["occupation"]
          end
        end
      end
    end
    answer
end

def get_average_age_for_season(data, season)
  ages = []
  avg_age = []
  data.each do |seasons, contestants|
    if seasons == season
      contestants.each_with_index do |people, index|
        people.each do  |spec,value|
          if spec == "age"
            ages << value
          end
        end
      end
    end
  end
  ages.map do |num|
    avg_age << num.to_f
  end
  total = avg_age.inject(0, :+)
avg_age
answer = total / avg_age.length
answer.round
end
