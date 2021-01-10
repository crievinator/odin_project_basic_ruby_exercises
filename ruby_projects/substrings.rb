dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


def substrings(word, array)
  counted_substrings = Hash.new(0)
  array.each do |dictionary_word|
    counted_substrings[dictionary_word] += 1 if word =~ /#{dictionary_word}/
  end
  p counted_substrings
end


substrings("below", dictionary)

p '--------'

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


def substringify(sentence, dictionary)
  counted_substrings = Hash.new(0)
  downcased_sentence_array = sentence.downcase.split

  p downcased_sentence_array

  downcased_sentence_array.each do |sentence_word|
    dictionary.each do |dictionary_word|
      counted_substrings[dictionary_word] += 1 if sentence_word =~ /#{dictionary_word}/
    end
  end
  p counted_substrings
end


substringify("Howdy partner, sit down! How's it going?", dictionary)
substringify("howhowhow", dictionary)
substringify("howdy howdy", dictionary)

p '!!!!!!!!!!!!'
#method which checks what words contain a certain word

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substr(word, array)
  counted_substrings = Hash.new(0)
  array.each do |dictionary_word|
    counted_substrings[dictionary_word] += 1 if dictionary_word =~ /#{word}/
  end
  p counted_substrings
end


substr("low", dictionary)
substr("go", dictionary)
substr("i", dictionary)