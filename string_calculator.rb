class StringCalculator
  class << self
    def add(numbers_string)
      return 0 if numbers_string.empty?
      return numbers_string.to_i if numbers_string =~ /^\d+$/
    end
  end
end
