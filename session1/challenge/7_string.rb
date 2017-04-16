# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)

  output = []
  h = string.chars.each_index.select {|index| string[index] == "r" || string[index] == "R"}
  #h.select {|index| index + 1}
  #g.select {|index| index.to_i+1}.join

  string_array = string.chars
  h.each do |index|
    output.push(string_array[index + 1])
  end

  return output.join("")
end
