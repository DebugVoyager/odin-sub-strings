# Implement a method #substrings that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.

# > dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
# => ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
# > substrings("below", dictionary)
# => { "below" => 1, "low" => 1 }


def substrings(string, dictionary)
  word_occurences = {}
  string_lowercase = string.downcase

  dictionary.each do |word|
    string_lowercase.split.each do |str|
      if str.include?(word)
        word_occurences.has_key?(word) ? word_occurences[word] += 1 : word_occurences[word] = 1
      end
    end
  end

  word_occurences
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)