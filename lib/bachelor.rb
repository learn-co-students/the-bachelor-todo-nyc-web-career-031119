require 'pry'
#return the first name of that season's winner
def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |ladies|
    ladies.each do |stats, info|
      if info == "Winner"
        name_full = ladies["name"]
        return name_full.split(" ").first
      end
      #binding.pry
    end
  end
end

#returns the name of the woman who has that occupation
def get_contestant_name(data, occupation)
  # code here
  data.each do |seasons, array|
    array.each do |women|
        women.each do |stats, info|
      if info == occupation
        return women["name"]
        end
      end
    end
  end
end

#return a count of the # of contestants who are from that hometown
def count_contestants_by_hometown(data, hometown)
  # code here
  same_town = 0
  data.each do |seasons, array|
    array.each do |women|
      women.each do |stats, info|
        if info.include?(hometown)
          same_town += 1
        end
      end
    end
  end
  return same_town
end
#returns the occupation of the 1st contestant from that hometown
def get_occupation(data, hometown)
  # code here
  data.each do |seasons, array|
    array.each do |women|
      women.each do |stats, info|
        if info == hometown
      return women["occupation"]
        end
      end
    end
  end
end

#return the average age of all of the contestants for that season
def get_average_age_for_season(data, season)
  # code here
  ave_age = 0
  count = 0
    data[season].each do |women|
      women.each do |stats, info|
        count +=1
        ave_age += women["age"].to_f
      end
      #binding.pry
    end
    answer = (ave_age/count).round
    return answer
  end
