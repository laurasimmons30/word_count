# Word counter. Take in a string and return the unique word count 
require 'pry'
string1 = "Hello, world!"
string2 = "To be or not to be"

def word_count(string)
  check_array = string.downcase.split(' ')
  array = []
  new_array = []
  count = 1
  check_array.map do |word|
    if !array.include?(word)
      array << [word, count]
    else
      array.index(word)    
  end

end
