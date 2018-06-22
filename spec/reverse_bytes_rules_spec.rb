require 'spec_helper'
require 'reverse_bytes_rule'

describe ReverseBytesRule do
  it 'should reverse bytes' do
    bytes = (0..9).to_a
    result = ReverseBytesRule.new.apply(bytes)
    expect(result).to eq([9, 8, 7, 6, 5, 4, 3, 2, 1, 0])
  end
end
