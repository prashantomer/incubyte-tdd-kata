require "./string_calculator"

RSpec.describe StringCalculator do
  it "returns 0 for an empty string" do
    expect(StringCalculator.add("")).to eq(0)
  end

  # Test for a single number
  it "returns the number itself for a single number" do
    expect(StringCalculator.add("5")).to eq(5)
  end
end
