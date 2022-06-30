def substrings (string, dict)
    hash = Hash.new
    string = string.downcase
    dict.each do | word |
      hash[word] = string.scan(word).length if string.include?(word)
    end
    hash
  end
  
  dict = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  
  puts substrings("Howdy partner, sit down! How's it going?", dict)