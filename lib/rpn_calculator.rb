require "rpn_calculator/version"
require "rpn_calculator/calculator"

module RpnCalculator
  class InvalidState < StandardError; end
  class InvalidOperation < StandardError; end
end
