require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end



def add_supply_to_a_holiday(holiday_hash, supply, holiday)
  holiday_hash[holiday].each do |holiday, decorations|
    decorations << supply
  end
end



def add_supply_to_winter_holidays(holiday_hash, supply, holiday = :winter)
  holiday_hash[holiday].each do |holiday, decorations|
    decorations << supply
  end
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].flatten(2)
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each {|season, celebration|
    puts season.to_s.capitalize + ":"
    celebration.each {|holiday, supply|
      line = "  "
      line << holiday.to_s.split("_").collect{|word| word.capitalize}.join(" ")
      line << ": "
      line << supply.each{|favor|favor}.join(", ")
      puts line
    }
  }
end

def all_holidays_with_bbq(holiday_hash)
  holiday_hash.map do |season, holidays|
    holidays.map do |holiday, supplies|
      holiday if supplies.include?("BBQ")
    end
  end.flatten.compact
end