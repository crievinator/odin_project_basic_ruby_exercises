def create_favorite_hash(color, number)
  # return a hash with the following key/value pairs:
  # key of color (as a symbol) with value of the color argument
  # key of number (as a symbol) with the value of the number argument
  favorite_hash = {}
  favorite_hash[:color] = color
  favorite_hash[:number] = number
  favorite_hash
end

p create_favorite_hash("blue", 65)