# Write first_pos, a method which takes a string and , returns a hash
# whose keys are all the words in the string, and values are the
# earliest position they were seen in the string.
#
# There will be no punctuation in the strings.
#
# first_pos "The dog and the cat and the cow" # => {"The" => 0, "dog" => 1, "and" => 2, "the" => 3, "cat" => 4, "cow" => 7}

def first_pos(str)
    clean_str = str.split(" ")
    index_count = 0
    word_position = Hash.new(0)
    clean_str.each do |word|
      if !word_position.has_key?(word)
    word_position[word] = index_count
    end
    index_count += 1
  end
    return word_position
  end
