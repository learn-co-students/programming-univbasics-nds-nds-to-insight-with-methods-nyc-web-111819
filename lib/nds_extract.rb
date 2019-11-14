require 'directors_database'
require 'pp'
# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  director_index = 0 
  while director_index < nds.count do 
    total_grossed = 0 
    movie_index = 0 
    while movie_index < nds[director_index][:movies].count do 
      total_grossed = total_grossed + nds[director_index][:movies][movie_index][:worldwide_gross]
      movie_index += 1 
      result[nds[director_index][:name]] = total_grossed
    end 
    
    director_index +=1
end
result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  movie_index = 0 
  big_total = 0 
  while movie_index < director_data[:movies].count do 
   big_total += director_data[:movies][movie_index][:worldwide_gross] 
   movie_index += 1 
end 
pp big_total 

end
