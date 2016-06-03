#!/usr/bin/env ruby
#
# test_say.rb
# Copyright (C) 2016 bitsapien
#
# Distributed under terms of the MIT license.
#


require 'minitest/autorun'
require_relative '../say' 

class SayTest < Minitest::Test
    def test_toddler_returns_a_word
        word = Say.word
        assert word != nil
    end
    def test_if_word_is_not_random
        word1 = Say.word
        word2 = Say.word
        assert word1 != word2
    end

end
