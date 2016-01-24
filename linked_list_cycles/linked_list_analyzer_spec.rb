require "./linked_list_analyzer"
require "./linked_list_node"

describe LinkedListAnalyzer do
  describe ".contains_cycle?" do
    context "does not contain a cycle" do
      it "returns false if the linked list does not contain a cycle" do
        first_node_in_list = non_cycle_list

        cycle = LinkedListAnalyzer.contains_cycle?(first_node: first_node_in_list)

        expect(cycle).to be_falsey
      end
    end

    context "contains a cycle" do
      it "returns true if the last node points back to the first node" do
        first_node_in_list = cycle_list

        cycle = LinkedListAnalyzer.contains_cycle?(first_node: first_node_in_list)

        expect(cycle).to be_truthy
      end

      it "returns true if a middle node points back to a previous node" do
        first_node_in_list = middle_cycle_list

        cycle = LinkedListAnalyzer.contains_cycle?(first_node: first_node_in_list)

        expect(cycle).to be_truthy
      end
    end
  end

  private

  def create_node(value:)
    LinkedListNode.new(value: value)
  end

  def non_cycle_list
    node_1 = create_node(value: 1)
    node_2 = create_node(value: 2)
    node_3 = create_node(value: 3)
    node_1.next = node_2
    node_2.next = node_3

    node_1
  end

  def cycle_list
    node_1 = create_node(value: 1)
    node_2 = create_node(value: 2)
    node_1.next = node_2
    node_2.next = node_1

    node_1
  end

  def middle_cycle_list
    node_1 = create_node(value: 1)
    node_2 = create_node(value: 2)
    node_3 = create_node(value: 3)
    node_4 = create_node(value: 4)
    node_5 = create_node(value: 5)
    node_1.next = node_2
    node_2.next = node_3
    node_3.next = node_4
    node_4.next = node_3

    node_1
  end
end
