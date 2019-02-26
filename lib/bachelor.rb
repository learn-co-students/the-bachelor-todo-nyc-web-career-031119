def get_first_name_of_season_winner(data, season)
    data[season].find {|status| status.fetch("status").downcase == "winner"}["name"].split.first
end

def get_contestant_name(data, occupation)
  data.values.each do |contestants|
    contestants.each do |cont_hash|
      if cont_hash["occupation"] == occupation
        return cont_hash["name"]
      end
    end
    #.find {|occu| occu.fetch("occupation") == occupation}
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  
  data.values.each do |contestants|
    contestants.each do |cont_hash|
      if cont_hash["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
 data.values.each do |contestants|
    contestants.each do |cont_hash|
      if cont_hash["hometown"] == hometown
        return cont_hash["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  total = 0
  count = 0
  data[season].each do |contestants|
     total += contestants["age"].to_i
     count += 1
  end
  (total/count.to_f).round(0)
end

