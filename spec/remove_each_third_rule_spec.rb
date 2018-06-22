require 'spec_helper'
require 'remove_each_third_bytes_rule'

describe RemoveEachThirdBytesRule do
  it 'should remove each third byte' do
    bytes = (0..11).to_a
    result = RemoveEachThirdBytesRule.new.apply(bytes)
    expect(result).to eq([0, 1, 3, 4, 6, 7, 9, 10])
  end
end
