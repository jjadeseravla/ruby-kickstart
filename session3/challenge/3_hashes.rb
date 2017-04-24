# Write a method that takes a string and returns an hash
# whose keys are all the downcased words in the string,
# and values are the number of times these words were seen.
#
# No punctuation will appear in the strings.
#
# Example:
# word_count "The dog and the cat" # => {"the" => 2, "dog" => 1, "and" => 1, "cat" => 1}

def word_count(str)
  clean_str = str.downcase.split(" ")
  word_count = Hash.new(0)
  clean_str.each do |word|
    word_count[word] += 1
  end
  return word_count
end
