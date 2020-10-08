def caesar(message, shift)
	lowercase_letters = ("a".."z").to_a
	uppercase_letters = ("A".."Z").to_a
	new_message = ""
	i = 0
	shift = shift % 26
	until i > message.length
		if uppercase_letters.include?(message[i])
			position = uppercase_letters.index(message[i]) + shift
			if position > 25 
				position = position - 26
			end
			new_message << uppercase_letters[position].to_s
			i += 1
		elsif lowercase_letters.include?(message[i])
			position = lowercase_letters.index(message[i]) + shift
			if position > 25 
				position = position - 26
			end
			new_message << lowercase_letters[position].to_s
			i += 1
		else
			new_message << message[i].to_s
			i += 1
		end
	end
	print new_message
end