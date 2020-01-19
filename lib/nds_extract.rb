$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

#########################################################################
def gross_for_director(director_data)

  total = 0
    index = 0

    while index < director_data[:movies].length do
      total += director_data[:movies][index][:worldwide_gross]
      index += 1
    end

    total
end
###################################################################################


def directors_totals(nds)
  result = {}
    index = 0
    while index < nds.size do
      director = nds[index]
      result[director[:name]] = gross_for_director(director)
      index += 1
    end
    puts result
    result

return result
end


# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

#
# name_i = 0
# names = ""
# insert_name = ""
# result = {
# }
#       while name_i < nds.length do
#       insert_name = nds[name_i][:name]
#
#             second_count = 0
#             each_total = 0
#             while second_count < nds[name_i][:movies].length do
#                 each_total += nds[name_i][:movies][second_count][:worldwide_gross]
#                 second_count += 1
#             end
#
#             name_i +=1
# result[insert_name] = each_total
#       end
#
# pp result
#   return result
# end
