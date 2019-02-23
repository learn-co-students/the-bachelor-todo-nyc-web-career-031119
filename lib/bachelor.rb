def get_first_name_of_season_winner(data, season)
  data[season].each do|ppl|
     ppl.each do|k, v|
        if v == "Winner"
         return ppl["name"].split(" ")[0]
       end
     end
     end 
  # code here
end

def get_contestant_name(data, occupation)
     data.each do|season, value_arr|
        value_arr.each do|ppl|
          if ppl["occupation"] == occupation
             return ppl["name"]
           end
        end
       end
  # code here
end

def count_contestants_by_hometown(data, hometown)
   count = 0
      data.each do|seaon, value_arr|
        value_arr.each do|ppl|
     if ppl["hometown"] == hometown
            count += 1
         end
        end
      end
    return count
  # code here
end

def get_occupation(data, hometown)
    data.each do|seaon, value_arr|
      value_arr.each do|ppl|
         if ppl["hometown"] == hometown 
           return ppl["occupation"]
         end
      end
    end  
  # code here
end

def get_average_age_for_season(data, season)
  numOfP = data[season].length
  ages = data[season].collect { |ppl| ppl["age"].to_i }.reduce(0) {|sum, age| sum += age}.to_f
  result = (ages / numOfP).round
  return result
end