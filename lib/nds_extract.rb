require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  index = 0 
  while index < nds.length
    result[nds[index][:name]] = gross_for_director(nds[index])
    index += 1
end 
p result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  pp director_data
  total = 0 
  index = 0 
  p director_data[:movies].length
  while index < director_data[:movies].length
     p director_data[:movies][index][:worldwide_gross]
     total += director_data[:movies][index][:worldwide_gross]
     index +=1
  end 
  p total
end
