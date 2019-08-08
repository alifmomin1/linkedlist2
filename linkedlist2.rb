class LinkedListNode
    attr_accessor :value, :next_node

    def initialize(value, next_node=nil)
        @value = value
        @next_node = next_node
    end
end

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_values(node3)




class Stack
    attr_reader :data 

    def initialize
        @data = []
    end

    # Push a value onto the stack
    def push(value)
        @data << value
    end

    # Pop an item off the stack.
    # Remove the last item that was pushed onto the
    # stack and return the value to the user
    def pop 
        @data.pop
    end

end

def reverse_list(list)
    stack = Stack.new

    while list
        stack.push(list.value)
        list = list.next_node  
    end

    value = stack.pop
    root_node = LinkedListNode.new(value)
    node =root_node
    
    while value
        value = stack.pop
        next if value.nil?    
        new_node = LinkedListNode.new(value)
        node.next_node = new_node 
        node = new_node
    end
    return root_node
end

def reverse_list_2(list, previous=nil)
  if list
    next_node = list.next_node
    list.next_node = previous
    reverse_list_2(next_node, list)
  end
end


print_values reverse_list(node3)


revlist2 = reverse_list_2(node3)

print_values(node1)
