class StringCalculator
  class << self
    def add(numbers_string)
      return 0 if numbers_string.empty?
      new(numbers_string).add
    end
  end

  attr :numbers_string

  def initialize(numbers_string)
    @numbers_string = numbers_string
  end

  def add
    return 0 if numbers_string.empty?

    check_if_negative_numbers
    numbers.inject(0) { |sum, number| number.to_i > 1000 ? sum : number.to_i + sum }
  end

  private
  def numbers
    @_numbers ||= numbers_string.split(delimiter)
  end

  def delimiter
    custom_delimiter || /[,;\n]/
  end

  def custom_delimiter
    @_delimiter ||=
      if numbers_string.start_with?("//")
        del_header = numbers_string.split("\n", 2)[0]
        if del_header.match?(/\[(.+)\]/)
          delimiter_rgxs = del_header.scan(/\[(.*?)\]\n/).flatten.map { |del| Regexp.escape(del) }
          Regexp.new(delimiter_rgxs.join('|'))
        else
          Regexp.new(Regexp.escape(del_header[2..]))
        end
      end
  end

  def check_if_negative_numbers
    negative_numbers = numbers_string.scan(/-\d+/).to_a
    raise "Negative numbers not allowed: #{negative_numbers.join(', ')}" unless negative_numbers.empty?
  end
end
