require "./linked_list_analyzer"
require "./linked_list_node"

describe LinkedListAnalyzer do
  describe "#initialize" do
    it "accepts the first node in a linked list" do
      node = LinkedListNode.new(value: 1)
      analyzer = LinkedListAnalyzer.new(first_node: node)

      expect(analyzer).to have_attributes(first_node: node)
    end
  end
end
