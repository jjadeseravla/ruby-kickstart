# Write a method, match_maker, which will receive an unknown number of
# elements, and return an array where every two elements are represented by true or false.
#
# The very first parameter will not be part of this set. Instead, it will tell
# you how to determine what their value should be.
# If it is true, then they will be true when they are oppositely truthy.
# If it is false, then they will be true when they are similarly truthy.
#
# Examples:
# match_maker false, true,  true                # => [true]
# match_maker true,  true,  true                # => [false]
# match_maker true,  false, false               # => [false]
# match_maker true,  false, true                # => [true]
# match_maker true,  true,  false               # => [true]
# match_maker true,  true,  true, false, true   # => [false, true]
# match_maker true,  true,  true, false, nil    # => [false, false]
# match_maker true,  true,  true, true, nil     # => [false, true]
# match_maker true,  true,  true, 0, nil        # => [false, true]

def match_maker(determinant, *element)
  output = []

  if determinant
    element.each_slice(2) do |i|
      if (!!i[0] != !!i[1])
        output.push(true)
      else
        output.push(false)
      end
    end
  else
    element.each_slice(2) do |i|
      if (!!i[0] == !!i[1])
        output.push(true)
      else
        output.push(false)
      end
    end
  end
  return output
end

# if index[0] == true, ---> then index[1] == index[2] --> false
#if index[0] == false, ---> then index[1] == index[2] --> true
# 0 == true, nil == false
