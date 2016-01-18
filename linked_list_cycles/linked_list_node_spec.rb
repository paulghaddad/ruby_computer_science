require "./linked_list_node"

describe LinkedListNode do
  describe "#initialize" do
    it "contains a value and default next node" do
      value = 10
      node = LinkedListNode.new(value: value)

      expect(node).to have_attributes(value: value, next: nil)
    end
  end
end
