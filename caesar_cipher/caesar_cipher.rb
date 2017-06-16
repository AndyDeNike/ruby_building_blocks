#Implement a caesar cipher that 
#takes in a string and the shift factor 
#and then outputs the modified string:

def caesar_cipher(string, shift)

   while shift > 26   #prevents users from accessing a value beyond the letters of ASCII table
     puts 'Sorry choose a number equal to or lower than 26'
     shift.gets.chomp.to_i
   end 
     
string.chars.map {|char|  #.chars seperates each symbol of the string (including spaces) into an array; .map 'maps' each element in the block with |char| representing the variable being targeted
  if char =~ (/\w/) && char == char.upcase #the =~ is a 'match operator' used to match current char with \w (any alphanumeric character) AND checks to see if char is uppercase
    char = char.ord + shift # .ord gives the ASCII value of the char  + given shift num 
      if char > 90  #if char is greater than 90, substract the total letters of alphabet to link char with appropriately shifted posotion 
        char = (char - 26).chr #use chr to return it back to letter form 
      else
        char.chr #if not greater than 90 (all char greater than 90 fall into lowercase category), simply return the .chr 
      end
  elsif char =~ (/\w/) && char == char.downcase #elsif char matches alphanumeric character AND downcase....
    char = char.ord + shift #.ord value +shift 
      if char > 122 #if greater than lowercase z in ASCII table...
        char = (char - 26).chr 
      else
        char.chr
      end
  else  #if its not a letter just char it up some 
    char
  
  end}.join  #rejoin the .chars array as shifted string 
     
end    

caesar_cipher("What a string!", 5)
caesar_cipher("Get ready for gibberish ya hea?")