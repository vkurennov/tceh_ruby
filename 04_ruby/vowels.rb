vovels = ['a','e','o','u','i','y']
vovels_hash = {}

('a'..'z').each_with_index do |letter, index|
  vovels_hash[letter] = index + 1 if vovels.include?(letter) 
end 
puts vovels_hash