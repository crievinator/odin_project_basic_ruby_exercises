#decipher everything

def caesar_cipher(sentence, encrypt_number=1)
  p sentence.codepoints.map { |codepoint| codepoint + encrypt_number }.map{ |encrypted_codepoint| encrypted_codepoint.chr}.join
end

caesar_cipher("abcd!")
caesar_cipher("What a string!", 5)

#Method which offsets a capital or lowercase letter and 
#outputs its offsetted character in encoded integer format

def alphabetize(codepoint, offset)
  encrypted_codepoint = codepoint + offset
  if ("a".."z").include?("#{codepoint.chr}")
    if encrypted_codepoint > 122
      encrypted_codepoint - 26
    else 
      encrypted_codepoint
    end
  elsif ("A".."Z").include?("#{codepoint.chr}")
    if encrypted_codepoint > 90
      encrypted_codepoint - 26
    else 
      encrypted_codepoint
    end
  else
      codepoint
  end
end

#Decipher only letters (capital & normal letters)

def caesar_cipher_advanced(sentence, encrypted_key)
  encrypted_characters = []
  sentence.each_codepoint { |codepoint| 
    encrypted_characters << alphabetize(codepoint, encrypted_key)
  }
  encrypted_characters.map!(&:chr).join
end

p caesar_cipher_advanced("What a string!", 5)
p caesar_cipher_advanced("aaaaabbbbb", 1)
p caesar_cipher_advanced("AAAABBBB", 1)




