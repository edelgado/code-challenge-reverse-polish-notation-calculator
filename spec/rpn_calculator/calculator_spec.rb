require 'spec_helper'

describe RpnCalculator::Calculator do

  context "given the following sequence of inputs" do

    context "5 8 +" do
      let(:sequence) { %w(5 8 +) }

      it "returns 13" do
        expect(input_sequence(sequence)).to eq(13)
      end
    end

    context "-3 -2 * 5 +" do
      let(:sequence) { %w(-3 -2 * 5 +) }

      it "returns 11" do
        expect(input_sequence(sequence)).to eq(11)
      end
    end

    context "2 9 3 + *" do
      let(:sequence) { %w(2 9 3 + *) }

      it "returns 24" do
        expect(input_sequence(sequence)).to eq(24)
      end
    end

    context "20 13 - 2 /" do
      let(:sequence) { %w(20 13 - 2 /) }

      it "returns 3.5" do
        expect(input_sequence(sequence)).to eq(3.5)
      end
    end

    context "20 -" do
      let(:sequence) { %w(20 -) }

      it "is not allowed" do
        expect(input_sequence(sequence)).to eq("Not enough values to calculate at this time.")
      end
    end

    context "0 0 /" do
      let(:sequence) { %w(0 0 /) }

      it "is not allowed" do
        expect(input_sequence(sequence)).to eq("Operation not allowed.")
      end
    end

    context "20 - 10 +" do
      let(:sequence) { %w(20 - 10 +) }

      it "initially fails, but then recovers" do
        expect(input_sequence(sequence)).to eq(30)
      end
    end

  end

  def input_sequence(sequence)
    last_result = nil
    sequence.each do |element|
      last_result = subject << element
    end
    last_result
  end
end
