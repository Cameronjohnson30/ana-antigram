#!/usr/bin/env ruby
require_relative('anagram')
words = Words.new()
puts 'enter a word or sentence'
word1 = gets.chomp
puts 'enter a second word or sentence'
word2 =gets.chomp
words.is_word?(word1, word2)
