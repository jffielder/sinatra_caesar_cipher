#for each char shift value

#uppercase 65 - 90
#lowercase 97 - 122


def caesar_cipher phrase, shift
  letters = phrase.split("")
  encrypted_letters = []

  letters.each {|letter|
    #if letter is upper case, if letter+shift > Z, add difference to A.ord
      if ('a'..'z') === letter 

        if letter.ord+shift > 122
          encrypted_letters.push( (letter.ord+shift-122+96).chr )
        else
          encrypted_letters.push((letter.ord+shift).chr)
        end

      elsif ('A'..'Z') === letter
        
        if letter.ord+shift > 90
          encrypted_letters.push( (letter.ord+shift-90+64).chr )
        else
          encrypted_letters.push((letter.ord+shift).chr)
        end
      else
        encrypted_letters.push(letter)    
      end
  }
  encrypted_letters.join

end

def caesar_cipher_v2 phrase, shift
  letters = phrase.split("")

  letters.each{letter}
end

def test1
puts "Enter phrase to encrypt"
phrase = gets.chomp
puts "Enter shift"
shift = gets.chomp.to_i

puts caesar_cipher(phrase, shift)


end
