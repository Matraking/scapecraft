class Decoder
  attr_reader :rules

  def initialize(rules)
    @rules = rules
  end

  def run(file_name)
    decoded_file = file_in_bytes(file_name)
    rules.each do |rule|
      decoded_file = rule.apply(decoded_file)
    end
    decoded_file
  end

  private

  def file_in_bytes(file_name) #'CPE1704TKS.txt'
    File.open(file_name, 'rb').each_byte.to_a
  end
end
