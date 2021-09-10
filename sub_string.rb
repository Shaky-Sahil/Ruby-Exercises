def substrings(word,dictionary)
    substr_hash = {}
    dictionary.each do |substr|
        if word.downcase.include?(substr.downcase)
            if substr_hash.include?(substr)
                substr_hash[substr]+=1
            else
                substr_hash[substr]=1
            end
        else
            next
        end
    end
    puts substr_hash
end



puts "Enter the word"
word = gets.chomp
puts "Enter the dictionary length"
len = gets.chomp.to_i
puts "Enter the Dictionary elements"
dictionary = []
1.upto(len) do
    dictionary.push(gets.chomp)
end
substrings(word,dictionary)