# Word counter. Take in a string and return the unique word count 

def word_count(string)
  string.gsub!(/\W+/, ' ')
  check_array = string.downcase.split(' ')
  word_count_hash = Hash.new

  check_array.each do |word|
    unless word_count_hash.include?(word)
      word_count_hash[word] = 1
    else
      word_count_hash[word] += 1
    end
  end
  word_count_hash 
end
