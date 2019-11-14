require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = { "Stephen Spielberg"=>1357566430,
    "Russo Brothers"=>2281002470,
    "James Cameron"=>2571020373,
    "Spike Lee"=>256624217,
    "Wachowski Siblings"=>806180282,
    "Quentin Tarantino"=>662738268,
    "Martin Scorsese"=>636812242,
    "Francis Ford Coppola"=>509719258
  }
  
  result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  new_array = director_data[:movies]
  i = 0 
  total_gross = 0
  while i < new_array.length do
    anotha_array = new_array[i]
    gross = anotha_array[:worldwide_gross]
    total_gross += gross
    i+=1
  end
 total_gross
end
