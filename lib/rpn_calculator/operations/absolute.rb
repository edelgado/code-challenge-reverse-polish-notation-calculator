module RpnCalculator
  class Absolute < Operation
    def self.symbol
      '@'
    end
    def call
      op = calculator.operands(1)
      op.first.abs
    end
  end
end
