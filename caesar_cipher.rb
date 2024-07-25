def caesar_cipher(phrase, key)
  # Split the string into a single character, then iterate it 
  new_phrase = phrase.split('').map do |char|
    # If the character match with a singular letter and avoid to change the punctuation marks
    if char.match(/[a-z]/)
      #  It is then converted to a number. To obtain the alphabetical order of the lowercase characters we subtract 96 and then add the key to change the character position.
      char = char.ord - 96 + key
      # In the case that the character exceeds the number of characters of the alphabet, which is 26, this amount is subtracted, otherwise the number remains the same. 
      if char > 26
        char -= 26
      else 
        char
      end
      # Add 96 to change the number to return it to be a string
      char += 96
    # In the same way, we did with the upcase characters to keep his state. In this case for the upcase we use 64
    elsif char.match(/[A-Z]/)
      char = char.ord - 64 + key
      if char > 26
        char -= 26
      else 
        char
      end
      char += 64
    else
      char
    end
    # Finally turns each character to be a alphabetical letter inside the array
    char.chr
  end
  # Join the array to get a single string
  new_phrase.join('')
end