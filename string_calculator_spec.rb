require "./string_calculator"

RSpec.describe StringCalculator do
  it "returns 0 for an empty string" do
    expect(StringCalculator.add("")).to eq(0)
  end

  # Test for a single number
  it "returns the number itself for a single number" do
    expect(StringCalculator.add("5")).to eq(5)
  end

  # Test for more than one number (2 or more) with comma delimiter
  it "returns the sum of two numbers" do
    expect(StringCalculator.add("1,2")).to eq(3)
  end
end
