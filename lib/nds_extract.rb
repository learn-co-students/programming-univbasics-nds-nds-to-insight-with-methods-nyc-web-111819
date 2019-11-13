require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  out_i = 0
  #loop that uses name of director as key and result of Method gross_for_director as element (total gross of movies)
  while out_i < nds.count do
    result[nds[out_i][:name]] = gross_for_director(nds[out_i])
    out_i += 1
  end
  result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  out_i = 0
  dir = director_data[:movies]
  total_gross = 0
  #loop that adds each :worldwide_gross to total_gross
  while out_i < dir.count do
    total_gross += dir[out_i][:worldwide_gross]
    out_i += 1
  end
  total_gross
end
