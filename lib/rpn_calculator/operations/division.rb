module RpnCalculator
  class Division < Operation
    def self.symbol
      '/'
    end
    def call
      (l,r) = calculator.operands(2)
      raise InvalidOperation, "Operation not allowed." if ( l == 0 && r == 0)
      l / r.to_f
    end
  end
end
