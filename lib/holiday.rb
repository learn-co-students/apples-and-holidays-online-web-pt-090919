require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_supplies = {
    :winter => {
      :christmas => ["Lights", "Wreath"],
      :new_years => ["Party Hats"]
    },
    :summer => {
      :fourth_of_july => ["Fireworks", "BBQ"]
    },
    :fall => {
      :thanksgiving => ["Turkey"]
    },
    :spring => {
      :memorial_day => ["BBQ"]
    }
  }

  holiday_supplies[:summer][:fourth_of_july][:holiday_supplies]
 end
end

def add_supply_to_winter_holidays(holiday_hash, supply)

  holiday_hash[:winter][:christmas]
  holiday_supplies[:winter][:new_years]



end


def add_supply_to_memorial_day(holiday_hash, supply)
holiday_hash[:spring][:memorial_day]
  holiday_hash[:spring][:memorial_day][:supply]<< "Grill"

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
holiday_hash[:fall]
holiday_hash<< {:columbus_day_supplies => ["Flags", "Parade Floats", "Italian Food"]}
holiday_supplies[:fall][:columbus_day]==[columbus_day_supplies]
end
valentines_day_supplies = ["Cupid Cut-Out", "Candy Hearts"]
holiday_supplies[:winter] [:valentines_day]== [:valentines_day_supplies]
end
  # remember to return the updated hash

end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[supply][winter]


end

def all_supplies_in_holidays(holiday_hash)
  holiday_supplies[]
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

end

def all_holidays_with_bbq(holiday_hash)
  holiday_hash[]
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end
