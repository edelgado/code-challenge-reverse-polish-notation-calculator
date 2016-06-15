module RpnCalculator
  class Operation

    def initialize(calculator)
      @calculator = calculator
    end

    def call(elem)

      begin
        value = Float(elem)
        return value % 1.0 == 0 ? elem.to_i : elem.to_f
      rescue ArgumentError
      end

      klass = self.class.descendants.find{|klass| klass.symbol == elem}

      raise InvalidOperator, "I do not know how to perform #{elem} operations." unless klass

      klass.new(calculator).call
    end

    def symbol
      raise NotImplementedError, "Sub-class responsibility"
    end

    protected
    attr_reader :calculator

    private

    def self.descendants
      ObjectSpace.each_object(Class).select { |klass| klass < self }
    end
  end
end
