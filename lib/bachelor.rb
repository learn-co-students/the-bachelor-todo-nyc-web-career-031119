def get_first_name_of_season_winner(data, season)
foo = ""
data.each do |season_num, info|
      if season_num == "#{season}"
        info.each do |k, v|
          k.each do |ke, va|
            if va == "Winner"
              foo << k["name"]
          end
          end
          end
    end
end
foo.split()[0]
end

def get_contestant_name(data, occupation)
  # code here
  foo = ""
  data.each do |season_num, person_info|
    person_info.each do |k, v|
      if k["occupation"] == "#{occupation}"
        foo << k["name"]
      end
    end
  end
  foo
end

def count_contestants_by_hometown(data, hometown)
  # code here
  foo = []
  data.each do |season_num, person_info|
    person_info.each do |k, v|
      if k["hometown"] == "#{hometown}"
        foo << k["name"]
      end
    end
  end
  foo.length
end

def get_occupation(data, hometown)
  # code here
  foo = []
  data.each do |season_num, person_info|
    person_info.each do |k, v|
      if k["hometown"] == "#{hometown}"
        foo << k["occupation"]
      end
    end
  end
  foo[0]
end

def get_average_age_for_season(data, season)
  # code here
  foo = []
  data.each do |season_num, person_info|
    person_info.each do |k, v|
      if season_num == "#{season}"
        foo << k["age"].to_i
      end
    end
  end
  i = 0
  matz = 0
  bar = foo.length
  while i < foo.length
    matz += foo[i]
    i += 1
  end
  answer = matz.to_f/bar.to_f
  answer.round
end
