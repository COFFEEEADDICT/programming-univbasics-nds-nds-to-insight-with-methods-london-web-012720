$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

#########################################################################
def gross_for_director(director_data)

  gross_total = 0
  i=0
    while i < director_data[:movies].length do
    gross_total += director_data[:movies][i][:worldwide_gross]
    i += 1
    end
    puts gross_total
  return gross_total
end
###################################################################################


def directors_totals(nds)

name_i = 0
result = {}
second_count = 0


  while name_i < nds.length do
    new_total = 0
      insert_name = nds[name_i][:name]

          #new_total = gross_for_director(nds)

        name_i += 1
        result[insert_name] = gross_for_director(nds)
puts result
        end

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
