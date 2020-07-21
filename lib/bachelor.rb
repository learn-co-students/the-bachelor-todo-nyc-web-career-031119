def get_first_name_of_season_winner(data, season)
  # code here
  data.each do |season_num, facts|
    #season_num = season 
    facts.each do |key|
      if key["status"] == "Winner" && season == season_num
             return key["name"].split.first
end 
end 
end 
end

def get_contestant_name(data, occupation)
    # code here
   data.each do |season_num, facts|
    #season_num = season 
    facts.each do |key|
      if key["occupation"] == occupation 
             return key["name"]
end
end
end 
end

def count_contestants_by_hometown(data, hometown)
  # code here
  number = []
  data.each do |season_num, facts|
    #season_num = season 
    facts.each do |key|
      if key["hometown"] == hometown 
            number << key["names"]
   end 
end
end 
return number.index.count
end

def get_occupation(data, hometown)
  # code here
  data.each do |season_num, facts|
    #season_num = season 
    facts.each do |key|
      if key["hometown"] == hometown 
             return key["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  sum = 0
  ages = []
  average = []
  data.each do |season_num, facts|
    #season_num = season 
    facts.each do |key|
      if season == season_num 
            ages << key["age"].to_f
           sum = ages.inject { |sum, x| sum+x}
               average = sum / ages.length
end 
end
end 
return  average.round
end
 