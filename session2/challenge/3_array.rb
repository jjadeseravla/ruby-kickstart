# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    solution = []
  chars.each_with_index do |char, index|
      if index % 2 == 0
        solution << char
      end
    end
    return solution.join("")
  end
end



#String.new.every_other_char

puts "jade".every_other_char
#every_other_char
