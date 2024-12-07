# define a method take two arguments:
# a word 
# an array called a dictionary
# should return a hash
# with key is the substring found in the dict
# anb value is how much time he found the substring
# substring = the word in the dictionary value by value 
# 1. loop through the dictionary
# 2. Check if the word match

# what are some of the task we need: 
# mini algo: check if the dictionary has a substring


def substrings(word, dictionary)
    substring_counts = {} 
  
    dictionary.each do |substring|
      downcased_word = word.downcase 
      downcased_substring = substring.downcase


      count = downcased_word.scan(downcased_substring).length  
      if count > 0
        substring_counts[substring] = count 
      end
    end
  
    substring_counts
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


puts substrings("Howdy partner, sit down! How's it going?", dictionary)


