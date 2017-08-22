class Calculator
  class << self

    def add(*operands)
      operands = operands.flatten.compact
      operands.inject(&:+)
    end

    def subtract(*operands)
      operands = operands.flatten.compact
      operands.inject(&:-)
    end

    def multiple(*operands)
      operands = operands.flatten.compact
      operands.inject(&:*)
    end

    def divide(*operands)
      operands = operands.flatten.compact
      operands.inject(&:/)
    end

  end
end