require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end



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
def all_winter_holiday_supplies(holiday_hash)
   supply_list = []
   holiday_hash.each do |season, holiday_hsh|
     holiday_hsh.each do |holiday, supply_array|
       supply_array.each do |supply|
        if season == :winter
           supply_list << supply
        end
      end
    end
  end
  supply_list
end


def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday_hsh|
    puts "#{season.capitalize.to_s}:"
    holiday_hsh.each do |holiday, supply_array|
      hol = "  #{holiday.to_s.gsub("_"," ")}: "
      if supply_array.length == 2
        puts "  #{hol.split.map(&:capitalize).join(' ')} #{supply_array[0]}, #{supply_array[1]}"
      else
        puts "  #{hol.split.map(&:capitalize).join(' ')} #{supply_array[0]}"
      end
    end
  end
end


def all_holidays_with_bbq(holiday_hash)
  array = []
  holiday_hash.each do |season, holiday_hsh|
    holiday_hsh.each do |holiday, supply_array|
      supply_array.each do |supply|
        if supply == "BBQ"
          array << holiday
        end
      end
    end
  end
  array
end

  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
