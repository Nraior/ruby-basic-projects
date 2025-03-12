dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(sentence, dictionary)
  counted_sentences = Hash.new(0)  
  
    dictionary.each do |dictionary_word| 
      count = sentence.scan(dictionary_word).count
      counted_sentences[dictionary_word] += count if count > 0
    
    end
  puts counted_sentences
end 

substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)