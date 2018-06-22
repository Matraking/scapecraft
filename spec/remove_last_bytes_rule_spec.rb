require 'spec_helper'
require 'remove_last_bytes_rule'

describe RemoveLastBytesRule do
  it 'should remove the X last bytes' do
    bytes = (0..49).to_a
    result = RemoveLastBytesRule.new(40).apply(bytes)
    expect(result).to eq((0..9).to_a)
  end
end
