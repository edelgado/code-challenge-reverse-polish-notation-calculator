module RpnCalculator
  class Calculator

    def initialize
      @stack = []
    end

    def << (element)
      stack << element
      calculate
    end

    def calculate
      element = stack.pop
      stack << RpnCalculator::Operation.new(self).call(element)
      stack.last
    rescue InvalidOperation, InvalidState => e
      e.message
    end

    def operands(num=2)
      raise InvalidState, "Not enough values to calculate at this time." if stack.size < num
      stack.pop(num)
    end

    private

    attr_accessor :stack
  end
end
