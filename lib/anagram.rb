class Words
  def is_word(word1, word2)
    if word1.scan(/[aeiou]/).count >= 1 && word2.scan(/[aeiou]/).count >= 1
      true
    else word1.scan(/[aeiou]/).count >= 1 && word2.scan(/[aeiou]/).count >= 0 || word1.scan(/[aeiou]/).count >= 0 && word2.scan(/[aeiou]/).count >= 1 || word1.scan(/[aeiou]/).count >= 0 && word2.scan(/[aeiou]/).count >= 0
      false
    end
  end
end