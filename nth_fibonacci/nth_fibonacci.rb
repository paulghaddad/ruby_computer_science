class NthFibonacci
  INDEX_0 = 0
  INDEX_1 = 1

  def self.fib(n)
    if n < 0
      raise ArgumentError, "Index cannot be negative"
    end

    if n == 0 || n == 1
      return n
    end

    n_minus_2 = INDEX_0
    n_minus_1 = INDEX_1
    current = 0

    2.upto(n) do |index|
      current = n_minus_2 + n_minus_1
      n_minus_2 = n_minus_1
      n_minus_1 = current
    end

    current
  end
end
