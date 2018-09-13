text_block = gets.chomp
text_block.downcase!.gsub!(/[^a-z0-9\s]/i, '')
text_array = text_block.split(" ")
text_hash = Hash.new

text_array.each do |word|
  if text_hash.key?(word)
    text_hash[word] += 1
  else
    text_hash[word] = 0
    
  end
end

text_hash.each {|word, count| puts "#{word}: #{count}"}