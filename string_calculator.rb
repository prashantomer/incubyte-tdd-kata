class StringCalculator
  class << self
    def add(numbers_string)
      return 0 if numbers_string.empty?
      numbers_string.split(",").map(&:to_i).sum
    end
  end
end
