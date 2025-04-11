require "./string_calculator"

RSpec.describe StringCalculator do
  context "when adding numbers" do
    # Test for empty string
    it "returns 0 for an empty string" do
      expect(StringCalculator.add("")).to eq(0)
    end

    # Test for a single number
    it "returns the number itself for a single number" do
      expect(StringCalculator.add("5")).to eq(5)
    end

    # Test for more than one number (2 or more)
    context "with two or more numbers" do
      # Test for comma separator
      it "returns the sum of two numbers separated by comma" do
        expect(StringCalculator.add("1,2")).to eq(3)
      end
    end

    context "with semicolon separator" do
      # Test for semicolon separator
      it "returns the sum of multiple numbers separated by semicolon" do
        expect(StringCalculator.add("1;2")).to eq(3)
      end
    end

    context "with new line separator" do
      # Test for new line separator
      it "returns the sum of multiple numbers separated by new line char" do
        expect(StringCalculator.add("1\n2")).to eq(3)
      end
    end

    context "with mixed separators and more than two numbers" do
      # Test for 2+ numbers
      it "returns the sum of more than two numbers separated by comma" do
        expect(StringCalculator.add("1,2,3,4")).to eq(10)
      end

      # Test for semicolon and comma separators
      it "returns the sum of multiple numbers separated by semicolon and comma" do
        expect(StringCalculator.add("1;2,3")).to eq(6)
      end

      # Test for new line, comma and semicolon separators
      it "returns the sum of multiple numbers separated by new line char, comma and semicolon" do
        expect(StringCalculator.add("1;2,3\n4")).to eq(10)
      end
    end

    # Test for custom delimiter
    context "with custom delimiter" do
      # Test for custom delimiter with 2 numbers
      it "returns the sum of two numbers separated by custom delimiter" do
        expect(StringCalculator.add("//;\n1;2")).to eq(3)
      end

      # Test for custom delimiter with more than 2 numbers
      it "returns the sum of two numbers separated by custom delimiter" do
        expect(StringCalculator.add("//;\n1;2;3")).to eq(6)
      end

      # Test for different custom delimiter with more than 2 numbers
      it "returns the sum of two numbers separated by custom delimiter" do
        expect(StringCalculator.add("//|\n1|2|3")).to eq(6)
      end
    end

    context "with negative numbers" do
      # Test for negative numbers
      it "raises an error when negative numbers are included" do
        expect { StringCalculator.add("1,-2,3") }.to raise_error(RuntimeError, "Negative numbers not allowed: -2")
      end

      # Test for multiple negative numbers
      it "raises an error when multiple negative numbers are included" do
        expect { StringCalculator.add("1,-2,-3") }.to raise_error(RuntimeError, "Negative numbers not allowed: -2, -3")
      end
    end

    context "Additional Steps" do
      context "with numbers greater than 1000" do
        # Test for numbers greater than 1000
        it "ignores numbers greater than 1000" do
          expect(StringCalculator.add("1,2,1001")).to eq(3)
        end
        # Test for multiple numbers greater than 1000
        it "ignores multiple numbers greater than 1000" do
          expect(StringCalculator.add("1,2,1001,1002")).to eq(3)
        end
        # Test for a single number greater than 1000
        it "ignores a single number greater than 1000" do
          expect(StringCalculator.add("1001")).to eq(0)
        end

        # Test for a single number greater than 1000 with custom delimiter
        it "ignores a single number greater than 1000 with custom delimiter" do
          expect(StringCalculator.add("//;\n1001")).to eq(0)
        end

        # Test for a single number greater than 1000 with custom delimiter and other numbers
        it "ignores a single number greater than 1000 with custom delimiter and other numbers" do
          expect(StringCalculator.add("//;\n1;2;1001")).to eq(3)
        end
      end
    end
  end
end
