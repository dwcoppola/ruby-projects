def substrings(user_input, dictionary)
  j = 0
  i = 0
  c = 0
  recap_hash = {}
  temp_array = []
  temp_string = ""
  user_input.downcase!
  until j == dictionary.length
    until i > (user_input.length - dictionary[j].length + 1)
      temp_string = user_input[i..(i + dictionary[j].length - 1)]
      temp_array << temp_string.to_s
      i += 1
    end
    i = 0
    until i > temp_array.length
      if temp_array[i] == dictionary[j]
        c += 1
      end
      i += 1
    end
  recap_hash[dictionary[j]] = c
    j += 1
    i = 0
    c = 0
    temp_array = []
  end
  return recap_hash
end
