class NthFibonacci
  INDEX_0 = 0
  INDEX_1 = 1

  def self.fib(index)
    fibonacci_numbers = [INDEX_0, INDEX_1]
    fibonacci_numbers[index]

    if index > 1
      2.upto(index) do |index|
        fibonacci_numbers[index] = fibonacci_numbers[index - 2] + fibonacci_numbers[index - 1]
      end
    end

    fibonacci_numbers[index]
  end
end
