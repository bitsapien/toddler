#!/usr/bin/env ruby
#
# say.rb
# Copyright (C) 2016 bitsapien
#
# Distributed under terms of the MIT license.
#

class Say
    def initialize
    end
    @vowels = ['a','e','i','o','u','ie']
    @consonants = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z','th','sh','pt']
    @alphabets = [@vowels,@consonants]
    def self.word
       length = rand(3..10)
       word = ''
       alt = rand(2)
       length.times do |index|
           limit = alt.zero? ? @vowels.size : @consonants.size
           word << @alphabets[alt][rand(limit)]
           alt = alt.zero? ? 1 : 0
       end
       word
    end
end


puts Say.word
