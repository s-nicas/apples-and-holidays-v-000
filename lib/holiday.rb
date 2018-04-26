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
   holiday_hash[:winter].collect do |holiday, decor|
     decor.push(supply)
   end
 end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring].collect do |holiday, decor|
    decor.push(supply)
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
    # return an array of all of the supplies that are used in the winter season
  all_winter_decor=[]

  holiday_hash[:winter].each do |holiday, decor|
    decor.each do|supplies|
      all_winter_decor.push(supplies)
     end
  end
  all_winter_decor
end

# def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
#   holiday_hash.each do |items|
#     puts items
#     if items.instance_of? Object
#       items.each do |holiday, inside|
#
#         puts "#{holiday}: #{inside}"
#         binding.pry
#          if inside.instance_of? Array
#            inside.each do |decor|
#              puts decor
#            end
#          end
#        end
#      end
#   end
# end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |items, day|
    
    day.each do |holiday|
binding.pry
      holiday.each do |day, supplies |

        puts supplies
      end
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"


end
