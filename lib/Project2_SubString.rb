# frozen_string_literal: true
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

input_string= "Howdy partner, sit down! How's it going?"
input_string= input_string.downcase
#puts input_string.split("ow").length()


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