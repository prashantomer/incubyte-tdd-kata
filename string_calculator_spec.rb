require "./string_calculator"

RSpec.describe StringCalculator do
  it "returns 0 for an empty string" do
    expect(StringCalculator.add("")).to eq(0)
  end

  # Test for a single number
  it "returns the number itself for a single number" do
    expect(StringCalculator.add("5")).to eq(5)
  end

  # Test for more than one number (2 or more)
  # Test for comma separator
  it "returns the sum of multiple numbers separated by comma" do
    expect(StringCalculator.add("1,2")).to eq(3)
    expect(StringCalculator.add("1,2,3")).to eq(6)
  end

  # Test for semicolon separator
  it "returns the sum of multiple numbers separated by semicolon" do
    expect(StringCalculator.add("1;2")).to eq(3)
  end

  # Test for semicolon and comma separators
  it "returns the sum of multiple numbers separated by semicolon and comma" do
    expect(StringCalculator.add("1;2,3")).to eq(6)
  end

  # Test for new line separator
  it "returns the sum of multiple numbers separated by new line char" do
    expect(StringCalculator.add("1\n2")).to eq(3)
  end

  # Test for new line, comma and semicolon separators
  it "returns the sum of multiple numbers separated by new line char, comma and semicolon" do
    expect(StringCalculator.add("1;2,3\n4")).to eq(10)
  end
end
