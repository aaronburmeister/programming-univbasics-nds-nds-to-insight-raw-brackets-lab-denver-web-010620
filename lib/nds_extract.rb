$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {}
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  director_count = 0
  while director_count < nds.length do
    director_total = 0
    movie_count = 0
    # calculate a director's movie total gross
    while movie_count < nds[director_count][:movies].length do
      director_total += nds[director_count][:movies][movie_count][:worldwide_gross]
    end
    # save it to its own hash in the result
    result
    director_count += 1
  end
  #
  # Be sure to return the result at the end!
  result
end

pp directors_database
count = 0
while count < directors_database.length do
  count += 1
end
puts "There are #{count} directors"