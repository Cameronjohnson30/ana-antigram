class Words
  def is_word(word1, word2)
    if word1.scan(/[aeiou]/).count >= 1 && word2.scan(/[aeiou]/).count >= 1
      is_anagram(word1,word2)
    else
      p "please check your spelling" 
    end
  end

  def is_anagram(word1, word2)
    if word1.downcase.chars.sort.join.gsub(/[^a-z ]/, '') == word2.downcase.chars.sort.join.gsub(/[^a-z ]/, '')
      p "These words are anagrams."
    else
      is_antigram(word1, word2)
    end
  end

  def is_antigram(word1, word2)
    a = word1.downcase.split("")
    b = word2.downcase.split("") 
    if !(a & b).empty? == true 
      p "These words are neither an anagram or antigram"
    else  !(a & b).empty? == false 
      p "These words have no letter matches and are antigrams."
    end
  end
end