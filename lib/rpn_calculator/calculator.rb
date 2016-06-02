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
      case element
        when '+'
          (l,r) = operands
          stack << l + r
        when '-'
          (l,r) = operands
          stack << l - r
        when '*'
          (l,r) = operands
          stack << l * r
        when '/'
          (l,r) = operands
          raise InvalidOperation, "Operation not allowed." if ( l == 0 && r == 0)
          stack << l / r.to_f
        else
          number = element.to_f % 1.0 == 0 ? element.to_i : element.to_f
          stack << number
      end
      stack.last
    rescue InvalidOperation, InvalidState => e
      e.message
    end

    private

    def operands
      raise InvalidState, "Not enough values to calculate at this time." if stack.size < 2
      stack.pop(2)
    end

    attr_accessor :stack
  end
end
