def second_supply_for_fourth_of_july
      second_supply_for_fourth_of_july(holiday_supplies)=("BBQ")
      holiday_supplies[:summer][:fourth_of_july][1] = "Watermelon"
      second_supply_for_fourth_of_july(holiday_supplies)=("Watermelon")
    end
  end

  def add_supply_to_winter_holidays
      add_supply_to_winter_holidays(holiday_supplies, "Balloons")
      holiday_supplies[:winter][:christmas]).to include("Balloons")
      holiday_supplies[:winter][:new_years]).to include("Balloons")
    end
  end
  
  def add_supply_to_memorial_day
    let(:memorial_day_supplies) { holiday_supplies[:spring][:memorial_day] }
      add_supply_to_memorial_day(holiday_supplies, "Grill")
      memorial_day_supplies).to include("Grill")
      memorial_day_supplies).not_to include("Table Cloth")
    end

    def adds a different supply to memorial day
      add_supply_to_memorial_day(holiday_supplies, "Table Cloth")
      memorial_day_supplies).to include("Table Cloth")
      memorial_day_supplies).not_to include("Grill")
  end

    def  add_new_holiday_with_supplies
      holiday_supplies[:fall].keys).not_to include(:columbus_day)

      columbus_day_supplies = ["Flags", "Parade Floats", "Italian Food"]

      add_new_holiday_with_supplies(holiday_supplies, :fall, :columbus_day, columbus_day_supplies)

      holiday_supplies[:fall].keys).to include(:columbus_day)
      holiday_supplies[:fall][:columbus_day]).to match_array(columbus_day_supplies)
      holiday_supplies[:winter].keys).not_to include(:valentines_day)
      valentines_day_supplies = ["Cupid Cut-Out", "Candy Hearts"]
         add_new_holiday_with_supplies(holiday_supplies, :winter, :valentines_day, valentines_day_supplies)

      holiday_supplies[:winter].keys).to include(:valentines_day)
     holiday_supplies[:winter][:valentines_day]).to match_array(valentines_day_supplies)
  end

  def all_winter_holiday_supplies
      ["Lights", "Wreath", "Party Hats"].each do |supply|
        expect(all_winter_holiday_supplies(holiday_supplies)).to include(supply)
  end
  
  def all_supplies_in_holidays
 
    it "should output the formatted list of holidays and their supplies" do
      @output.each_line do |line|
        expect($stdout).to receive(:puts).with(line.chomp)
      end
      all_supplies_in_holidays(holiday_supplies)
    end

  def all_holidays_with_bbq
      all_holidays_with_bbq(holiday_supplies)=([:fourth_of_july, :memorial_day])
  end








