require 'spec_helper'
require 'decoder'

describe Decoder do
  it 'should read the file in byte mode' do
    filename = 'file.txt'
    file = 'file'
    expect(File).to receive(:open).with(filename, 'rb').and_return(file)
    expect(file).to receive(:each_byte)

    Decoder.new([]).run(filename)
  end

  it 'should apply the rules' do
    file = double('file')
    rule1 = double('rule')
    result1 = 'a'
    rule2 = double('rule')
    result2 = 'b'

    decoder = Decoder.new([rule1, rule2])

    expect(decoder).to receive(:file_in_bytes).and_return(file)
    expect(rule1).to receive(:apply).with(file).and_return(result1)
    expect(rule2).to receive(:apply).with(result1).and_return(result2)

    expect(decoder.run('filename')).to eq(result2)
  end
end
