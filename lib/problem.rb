#!/usr/bin/env ruby
require_relative 'decoder'
require_relative 'remove_each_third_bytes_rule'
require_relative 'remove_first_bytes_rule'
require_relative 'remove_last_bytes_rule'
require_relative 'reverse_bytes_rule'

p 'HOLA QUE ASE'
rules = []
rules << RemoveFirstBytesRule.new(100)
rules << RemoveLastBytesRule.new(100)
rules << RemoveEachThirdBytesRule.new
rules << ReverseBytesRule.new

decoder = Decoder.new(rules)
result = decoder.run('CPE1704TKS.txt')

File.open('result.jgp', 'w') do |output|
  result.each do |byte|
    output.print byte.chr
  end
end
