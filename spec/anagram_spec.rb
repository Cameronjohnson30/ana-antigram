require ('rspec')
require ('anagram.rb')

word = Words.new()

describe("Words#is-word?") do
  it("returns true if both word1 and word2 contain a vowel") do
    expect(word.is_word?("hello", "yes")).to(eq(true))
  end