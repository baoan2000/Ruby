# frozen_string_literal: true
# Build a method #bubble_sort that takes an array and returns a sorted array. It must use the bubble sort methodology (using #sort would be pretty pointless, wouldn’t it?).
# > bubble_sort([4,3,78,2,0,2])
# => [0,2,2,3,4,78]

input_array=[4,3,78,2,0,2]
def bubblesort(input_array)
  temp=0
  n= input_array.length()
  i=n-1
  while i>0
    for j in 0..i-1
      if input_array[j]>input_array[j+1]
        temp= input_array[j]
        input_array[j]=input_array[j+1]
        input_array[j+1]=temp
      end
    end
    i=i-1
  end
  return input_array
end

puts bubblesort(input_array)
