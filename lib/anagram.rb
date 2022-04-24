class Words

  def initialize()
    @failed = "please check your spelling" 
    @anagram = "These words are anagrams."
    @antigram = "These words have no letter matches and are antigrams."
    @noMatch = "These words are neither an anagram or antigram"
  end

  def is_word(word1, word2)
    if word1.scan(/[aeiou]/).count >= 1 && word2.scan(/[aeiou]/).count >= 1
      is_anagram(word1,word2)
    else
      p @failed
    end
  end

  def is_anagram(word1, word2)
    if word1.downcase.chars.sort.join.gsub(/[^a-z ]/, '') == word2.downcase.chars.sort.join.gsub(/[^a-z ]/, '')
      p @anagram
    else
      is_antigram(word1, word2)
    end
  end

  def is_antigram(word1, word2)
    a = word1.downcase.split("")
    b = word2.downcase.split("") 
    if !(a & b).empty? == true 
      p @noMatch
    else  !(a & b).empty? == false 
      p @antigram
    end
  end
end