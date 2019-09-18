require 'pry'

# given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday, values|
    values << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].collect do |holiday_name, value|
    value
  end.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays|
    puts "#{season.capitalize}:"
    holidays.each do |holiday, values|
      case holiday
        when :christmas
          puts "  Christmas: #{values.join(', ')}"
        when :new_years
          puts "  New Years: #{values.join(', ')}"
        when :fourth_of_july
          puts "  Fourth Of July: #{values.join(', ')}"
        when :thanksgiving
          puts "  Thanksgiving: #{values.join(', ')}"
        when :memorial_day
          puts "  Memorial Day: #{values.join(', ')}"
      end
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  bbq_holidays = []
  
  holiday_hash.each do |key, season_hash|
    season_hash.each do |holiday, arr_values|
      if arr_values.include?("BBQ")
        bbq_holidays << holiday
      end
    end
  end
  bbq_holidays
end







