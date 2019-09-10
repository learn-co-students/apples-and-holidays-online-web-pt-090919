require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
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
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
  holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
  holiday_hash
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, hash_data|
    hash_data.each do |holiday, array|
      puts "#{season.to_s.capitalize}:" if holiday != :new_years
      if holiday == :christmas || holiday == :thanksgiving
        puts "  #{holiday.to_s.capitalize!}: #{array.join(", ")}"
      else
        puts "  #{holiday.to_s.split("_").collect{|word| word.capitalize!}.join(" ")}: #{array.join(", ")}"
      end
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  new_array = []
  holiday_hash.each do |season, hash_data|
    hash_data.each do |holiday, array|
      if array.include?("BBQ")
        new_array << holiday
      end
    end
  end
  new_array
end







