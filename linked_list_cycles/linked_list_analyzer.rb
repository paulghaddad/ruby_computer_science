class LinkedListAnalyzer
  def self.contains_cycle?(first_node:)
   current_node = first_node
   nodes = []

   while true
    next_node = current_node.next

    if nodes.include?(next_node)
      return false
    end

    if next_node.nil?
      return true
    end

    nodes << next_node
    current_node = next_node
   end
  end
end
