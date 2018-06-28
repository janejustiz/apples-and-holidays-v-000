require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, data|
    if season == :winter
      data.each do |holiday, data|
        holiday_hash[season][holiday] << supply
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, data|
    data.each do |holiday, data|
      if holiday == :memorial_day
        holiday_hash[season][holiday] << supply
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  supply = []
  holiday_hash.each do |season, data|
    if season == :winter
      data.each do |holiday, h_data|
        h_data.each do |stuff|
         supply << stuff
        end
      end
    end
  end
  supply
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, data|
    puts "#{season.capitalize}:"
    data.each do |holiday, data|
      puts "  #{holiday.capitalize}: #{data.values}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  answer = []
  holiday_hash.each do |season, data|
    data.each do |holiday, supplies|
      supplies.each do |x|
        if x == "BBQ"
          answer << holiday
        end
      end
    end
  end
  answer
end
