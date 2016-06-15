module_root = File.dirname(File.expand_path(__FILE__))
Dir.glob(module_root + '/rpn_calculator/**/*.rb', &method(:require))

module RpnCalculator
  class InvalidState < StandardError; end
  class InvalidOperation < StandardError; end
  class InvalidOperator < StandardError; end
end
