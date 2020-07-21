require 'pry'
def get_first_name_of_season_winner(data, season)
  # code here
  result = ""
  data.each do |series, people_array|
    if series == season
      people_array.each do |person|
        person.each do |attribute, value|
          if attribute == "status" && value == "Winner"
            result = person["name"]
          end
        end
      end
    end
  end
  final = result.split(" ")
  final[0]
end

def get_contestant_name(data, occupation)
  # code here
  result = ""
  data.each do |series, people_array|
    people_array.each do |person|
      person.each do |attribute, value|
        if attribute == "occupation" && value == occupation
          result = person["name"]
        end
      end
    end
  end
  result
end

def count_contestants_by_hometown(data, hometown)
  result = 0
  data.each do |series, people_array|
    people_array.each do |person|
      person.each do |attribute, value|
        if attribute == "hometown" && value == hometown
          result = result + 1
        end
      end
    end
  end
  result
end

def get_occupation(data, hometown)
  result = ""
  data.each do |series, people_array|
    people_array.each do |person|
      person.each do |attribute, value|
        if attribute == "hometown" && value == hometown && result == ""
          result = person["occupation"]
        end
      end
    end
  end
  result
end

def get_average_age_for_season(data, season)
  result = []
  data.each do |series, people_array|
    if series == season
      people_array.each do |person|
        person.each do |attribute, value|
          if attribute == "age"
            result.push(value.to_i)
          end
        end
      end
    end
  end
  result
  sum = 0
  i = 0
  while i < result.size
    sum = sum + result[i]
    i += 1
  end
  average = (sum.to_f / result.size).round
  average
end
