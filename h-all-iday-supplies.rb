holiday_hash = {
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

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  
  holiday_hash.each { |season, celebration|
    puts season.to_s.capitalize + ":"
    celebration.each { |holiday, supply|
      line = "  "
      line += holiday.to_s.split("_").collect{ |word| word.capitalize}.join(" ")
      line += ": "
      supply.each_with_index { |favor, index|
        line += ", " if index > 0
        if favor == favor.upcase
          line += favor
        else
          line += favor.split(" ").collect{ |word| word.capitalize}.join(" ")
        end
      }  
      puts line
    }  
  }
end

all_supplies_in_holidays(holiday_hash)