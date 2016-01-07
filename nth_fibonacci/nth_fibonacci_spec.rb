require './nth_fibonacci'

describe NthFibonacci do

  describe "#fib" do
    it "returns 0 for the Zero index" do
      expect(NthFibonacci.fib(0)).to eq(0)
    end

    it "returns 1 for the 1 index" do
      expect(NthFibonacci.fib(1)).to eq(1)
    end

    it "returns 1 for an index of 2" do
      expect(NthFibonacci.fib(2)).to eq(1)
    end

    it "returns 2 for an index of 3" do
      expect(NthFibonacci.fib(3)).to eq(2)
    end

    it "returns 3 for an index of 4" do
      expect(NthFibonacci.fib(4)).to eq(3)
    end

    it "returns 5 for an index of 5" do
      expect(NthFibonacci.fib(5)).to eq(5)
    end
  end

end
