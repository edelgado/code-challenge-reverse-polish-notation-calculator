module RpnCalculator
  class Subtraction < Operation
    def self.symbol
      '-'
    end
    def call
      (l,r) = calculator.operands(2)
      l - r
    end
  end
end
