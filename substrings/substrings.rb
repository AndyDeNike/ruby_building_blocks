#Implement a method #substrings 
#that takes a string as the first argument 
#and then an array of valid substrings (your dictionary) as the second argument. 
#It should return a hash listing each substring (case insensitive) 
#that was found in the original string 
#and how many times it was found.

def substrings(input, dictionary)  #takes in parameters, string(input)/array(dictionary)
  
  
  words = input.split(" ")  #words variable equal to  input string .split, seperated by " ", into an array 
  quantityWords = Hash.new(0)  #quantityWords hash is created with all keys given the default value of 0 
  words.each do |word|    #iterating over each index of words and to each 'word'...
    word.downcase!   #making it downcase 
    dictionary.each do |dword|  #for each index word in dictionary...
      if dword == word  #if both words are equal (match)
        quantityWords[word] += 1  #increase the value of quantityWords[word] by 1 (to keep count)
      end 
    end 
  end 
  
  quantityWords.each do |word, frequency|  #for each word in the hash quantityWords, |key, value|, stringifiy it and convert number value to s 
    puts word + " " + frequency.to_s 
  end 
  
end

dictionary = ["below", "big", "go", "going", "hello", "how", "i", "it", "that", "when", "where", "who", "why", "you"] 

substrings("hello GO", dictionary)