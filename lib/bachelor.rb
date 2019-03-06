def get_first_name_of_season_winner(data, season)
  data[season].each {
    |contestant| if contestant["status"] == 'Winner'
      return contestant['name'].split(' ')[0]
    end
  }
end

def get_contestant_name(data, occupation)
  data.each {
    |season,contestant| contestant.each {
      |contestant| if contestant['occupation'] == occupation
        return contestant['name']
      end
    }
  }
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each {
    |season,contestant| contestant.each {
      |contestant| if contestant['hometown'] == hometown
        count += 1
      end
    }
  }
  count
end

def get_occupation(data, hometown)
  data.each {
    |season,contestant| contestant.find {
      |contestant| if contestant['hometown'] == hometown
        return contestant['occupation']
      end
    }
  }
end

def get_average_age_for_season(data, season)
  sum = 0
  count = 0
  data[season].each {
    |contestant| sum += contestant['age'].to_i
    count += 1
  }
  return (sum / count.to_f).round
end
