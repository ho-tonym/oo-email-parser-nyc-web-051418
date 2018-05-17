class EmailParser
  attr_reader :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    addresses = @emails.split
    result = addresses.map {|address| address[-1] == "," ? address[0..-2] : address}
    result.uniq
  end

end