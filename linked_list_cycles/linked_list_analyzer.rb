class LinkedListAnalyzer
  def self.contains_cycle?(first_node:)

    # start both runners at the beginning of the linked list
    fast_runner = first_node
    slow_runner = first_node

    # until we hit the bottom of the list
    until fast_runner == nil || fast_runner.next == nil
      slow_runner = slow_runner.next
      fast_runner = fast_runner.next.next

      # case: fast_runner is about to lap slow runner
      if fast_runner == slow_runner
        return true
      end
    end

    # case: fast_runner hit the end of the list
    return false
  end
end
