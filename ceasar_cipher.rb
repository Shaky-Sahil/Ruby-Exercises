def ceas_cipher(word,shift)
    result = ""
    word.each_char do |letter|
        asc_val = letter.ord
        if asc_val>=(122-shift) && asc_val<=122 || asc_val>=(90-shift) && asc_val<=90
            asc_val = asc_val-(26-shift)
        else
            asc_val = asc_val+shift
        end
        result +=asc_val.chr
    end
    return result
end
puts "Enter the word to encrypt"
word = gets.chomp
puts "enter the shift length"
shift = gets.chomp.to_i
encrypted_wrd = ceas_cipher(word,shift)
puts "The word after encryption is #{encrypted_wrd}"