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
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |time, holiday|
    holiday.each do |holiday, things|
      if holiday == :christmas
        things << "Balloons"
      end
      if holiday == :new_years
        things << "Balloons"
      end
    end
  end
holiday_hash
# if holiday_hash.keys == :christmas
#
# end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
<<<<<<< HEAD

  holiday_hash.each do |time, holiday|
    holiday.each do |holiday, things|
    things.push(supply)
      # if holiday == :memorial_day && things.any?("Table Cloth")
      #
      #   things.delete("Table Cloth")
      #   things << "Grill"
      # elsif holiday == :memorial_day && things.any?("Grill")
      #   things.delete("Grill")
      #   things << "Table Cloth"
      # end

=======
  holiday_hash.each do |time, holiday|
    holiday.each do |holiday, things|
      if holiday == :memorial_day
        things << "Grill"

      end
    end
  end
  holiday_hash.each do |time, holiday|
    holiday.each do |holiday, things|
      if holiday == :memorial_day
        things << "Table Cloth"

      end
>>>>>>> f9d0f922e3a379695e290fa7e5b00c0fdf8ea04e
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  n = {season => {holiday_name => supply_array}}
holiday_hash.merge!(n)
holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  k = []
  # return an array of all of the supplies that are used in the winter season
holiday_hash.each do |season, holidays|
  if season == :winter
  k = holidays.values.flatten
end
end
k
#binding.pry
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do | season, holiday|
     puts "#{season.capitalize}:"
     holiday.each do |holiday, thing|
       puts "  #{holiday.to_s.split("_").map {|i| i.capitalize}.join(" ")}: #{thing.join(", ")}"
     end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holiday_hash.map do |season, holiday|
    holiday.map do |holiday, item|
     holiday if item.include?("BBQ")
    end
end.flatten.compact
end
