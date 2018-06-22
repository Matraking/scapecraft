require 'spec_helper'
require 'remove_first_bytes_rule'

describe RemoveFirstBytesRule do
  it 'should remove the X first bytes' do
    bytes = (0..49).to_a
    result = RemoveFirstBytesRule.new(40).apply(bytes)
    expect(result).to eq((40..49).to_a)
  end
end
