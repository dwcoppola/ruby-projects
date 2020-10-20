def bubble_sort(user_array)
  swap = []
  c = 0
  for c in 0..(user_array.length - 1)
    i = 0
    until i > user_array.length - 2
      swap[i] = user_array[i]
      swap[i + 1] = user_array[i + 1]
        if swap[i] > swap[i + 1] 
          user_array[i] = swap[i + 1]
          user_array[i + 1] = swap[i]
        else
        end
      i += 1
    end
    c += 1
  end
  return user_array
end
