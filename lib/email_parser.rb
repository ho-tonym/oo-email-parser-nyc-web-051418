class EmailParser
  
  attr_reader :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    address = @emails.split
    result = address.map do |element| 
      if element[-1] == "," 
         element[0..-2] 
      else 
        element
    end
    result.uniq
  end

end