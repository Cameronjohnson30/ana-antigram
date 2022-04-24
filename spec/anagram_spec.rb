require ('rspec')
require ('anagram.rb')

words = Words.new()

describe("Words#is-word") do
  it("returns true if both word1 and word2 contain a vowel") do
    expect(words.is_word("hello", "yes")).to(eq(true))
  end
  it("returns false if word2 does not contain vowel") do
    expect(words.is_word("hello", "whp")).to(eq(false))
end
  it("returns false if word1 does not contain vowel") do
    expect(words.is_word("whp", "hello")).to(eq(false))
  end
  it("returns false if both word1 or word2 does not contain vowel") do
    expect(words.is_word("whp", "whp")).to(eq(false))
  end
end

describe("Words#is_anagram") do
  it("returns true if word1 and word2 are anagrams") do
    expect(words.is_anagram("Tea", "eat")).to(eq("These words are anagrams."))
  end
  it("returns true if word1 and word2 are anagrams") do
    expect(words.is_anagram("The Morse Code", "Here come dots!")).to(eq("These words are anagrams."))
  end  
  it("returns false if word1 and word2 are not anagrams") do
    expect(words.is_anagram("Tea", "eat")).to(eq(false))
  end
end