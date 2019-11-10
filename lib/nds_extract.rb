require 'directors_database'
require 'pry'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  

end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  total = {}
  director_index = 0
  
  director_name = directors_database[director_index][:name]
  
  movie_index = 0 
  
  while movie_index < directors_database[0][:movies].length do
    total_gross = directors_database[0][:movies][movie_index][:worldwide_gross]
    movie_index += 1
    binding.pry
  end
  total[director_name] = total_gross
end
