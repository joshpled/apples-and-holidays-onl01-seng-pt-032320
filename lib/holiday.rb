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
holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

  holiday_hash[:spring][:memorial_day] << supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
holiday_hash[season].merge!({holiday_name => supply_array})
holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  christmas = holiday_hash[:winter][:christmas].to_a
  new_years = holiday_hash[:winter][:new_years].to_a
  winter_supplies = christmas + new_years
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |seasons, holidays|
    puts "#{seasons.to_s.capitalize}:"
      holidays.each do |holidays, supplies|
        new_holiday = holidays.to_s.split("_")
          new_holiday = new_holiday.collect do |word|
            word.capitalize
          end
            puts "  #{new_holiday.join(" ")}: #{supplies.join(", ")}"
          end
      end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq_holiday = []
 holiday_hash.each do |season, holiday|
    holiday.each do |holiday, supply|
      supply.each do |item|
        if item == "BBQ"
          bbq_holiday << holiday
        end
      end
    end
  end
bbq_holiday
end
