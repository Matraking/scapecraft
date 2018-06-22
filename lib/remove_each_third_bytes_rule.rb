class RemoveEachThirdBytesRule
  def apply(bytes)
    result = []
    bytes.each_with_index do |val, index|
      result << val if ((index + 1) % 3).nonzero?
    end
    result
  end
end
