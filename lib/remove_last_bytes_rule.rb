class RemoveLastBytesRule
  attr_reader :bytes_to_remove

  def initialize(bytes_to_remove)
    @bytes_to_remove = bytes_to_remove
  end

  def apply(bytes)
    bytes[0..(bytes.length - 1 - bytes_to_remove)]
  end
end
