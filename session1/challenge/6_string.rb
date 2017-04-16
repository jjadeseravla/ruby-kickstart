# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#
# odds_and_evens("abcdefg",true)    # => "bdf"
# odds_and_evens("abcdefg",false)   # => "aceg"

def odds_and_evens(string, return_odds)
  output = []
  if return_odds
    for char, index in string.split("").each_with_index
      if index.odd?
        output.push(char)
      end
    end
  else
    for char, index in string.split("").each_with_index
      if index.even?
        output.push(char)
      end
    end
  end
  output.join("")
end

#else
  #return string.to_a.select.each_with_index { |i| i.even? }
