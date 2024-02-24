# frozen_string_literal: true
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
