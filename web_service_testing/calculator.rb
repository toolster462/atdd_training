class Calculator
  class << self

    def add(*operands)
      operands = operands.flatten
      operands.inject(&:+)
    end

    def subtract(*operands)
      operands = operands.flatten
      operands.inject(&:-)
    end

    def multiple(*operands)
      operands = operands.flatten
      operands.inject(&:*)
    end

    def divide(*operands)
      operands = operands.flatten
      operands.inject(&:/)
    end

  end
end