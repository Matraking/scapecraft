class RemoveFirstBytesRule
  attr_reader :bytes_to_remove

  def initialize(bytes_to_remove)
    @bytes_to_remove = bytes_to_remove
  end

  def apply(bytes)
    bytes.drop(bytes_to_remove)
    #bytes[bytes_to_remove..(bytes.length - 1)]
  end
end
