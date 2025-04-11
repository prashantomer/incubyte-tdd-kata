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
    numbers.inject(0) { |sum, number| number.to_i + sum }
  end

  private
  def numbers
    numbers_string.split(default_delimiter)
  end

  def default_delimiter
    /[,;\n]/
  end
end
