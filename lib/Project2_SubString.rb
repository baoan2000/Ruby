# frozen_string_literal: true
# Implement a method #substrings that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument.
# It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.
#
#   > dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
#   => ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
#   > substrings("below", dictionary)
#   => { "below" => 1, "low" => 1 }
# Next, make sure your method can handle multiple words:
#
#   > substrings("Howdy partner, sit down! How's it going?", dictionary)
#   => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
# Please note the order of your keys might be different.
#
# Quick Tips:
#
# Recall how to turn strings into arrays and arrays into strings.
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

input_string= "Howdy partner, sit down! How's it going?"
input_string= input_string.downcase


def substring(input_string,input_array)
  hash_result= Hash.new(0)
  for i in 0..input_array.length()-1
    if input_string.include?(input_array[i])== true
      hash_result[input_array[i]]= input_string.split(input_array[i]).length()-1
    end
  end
  return hash_result
end
puts substring(input_string,dictionary)