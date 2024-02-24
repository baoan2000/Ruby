# frozen_string_literal: true
# In cryptography, a Caesar cipher, also known as Caesar’s cipher, the shift cipher, Caesar’s code or Caesar shift, is one of the simplest and most widely known encryption techniques.
# It is a type of substitution cipher in which each letter in the plaintext is replaced by a letter some fixed number of positions down the alphabet.
# For example, with a left shift of 3, D would be replaced by A, E would become B, and so on. The method is named after Julius Caesar,
# who used it in his private correspondence.
# Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string:
#
#   > caesar_cipher("What a string!", 5)
#   => "Bmfy f xywnsl!"
# Quick Tips:
#
# You will need to remember how to convert a string into a number.
# Don’t forget to wrap from z to a.
# Don’t forget to keep the same case.
#
input_string = "What a string!"
input_array= input_string.chars
alpha_string="abcdefghijklmnopqrstuvwxyz"
$alpha_array=alpha_string.chars
alpha_upcase_string="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
$alpha_upcase_array=alpha_upcase_string.chars

def calculate_index(index)
  index_out=index
  for j in 1..5
    if index_out==25
      index_out=0
    else
      index_out=index_out+1
    end
  end
  return index_out
end
def calculate_word(array_input,words,i)
  index_out=0
  array_input.each_with_index  do |word,index|
    if word==words[i]
      index_out=index
    end
  end
  index_out=calculate_index(index_out)
  return array_input[index_out]
end
def caesar_cipher(words,step)
  array_output=[]
  for i in 0..words.length()-1
    if $alpha_upcase_array.include?(words[i])
      array_output.push(calculate_word($alpha_upcase_array,words,i))
    else
      if $alpha_array.include?(words[i])
        array_output.push(calculate_word($alpha_array,words,i))
      else
        array_output.push(words[i])
      end
    end
  end
  return array_output
end

puts caesar_cipher(input_array,5).join
