require ('rspec')
require ('anagram.rb')

words = Words.new()

describe("Words#is-word") do
  it("returns true if both word1 and word2 contain a vowel") do
    expect(words.is_word("hello", "yes")).to(eq(true))
  end
end