require '..\linked_list\linked_list_node.rb'

class LinkedList
    attr_accessor :head
    def initialize(val)
        @head = Node.new(val, nil)
    end
# #append adds a new node to the end of the list
    def append(val)
        current = @head
        while current.next?
            current = current.next_node
        end
        new_node = Node.new(val, nil)
        current.next_node = new_node
    end

# #prepend adds a new node to the start of the list
    def prepend(val)
        new_node = Node.new(val, @head)
        @head = new_node
    end

# #size returns the total number of nodes in the list
    def size
        count = 1
        current = @head
        while current.next?
            current = current.next_node
            count += 1
        end
        count
    end

# #head returns the first node in the list
    def head
        @head.value
    end

# #tail returns the last node in the list
    def tail
        current = @head
        while current.next?
            current = current.next_node
        end
        current.value
    end

# #at(index) returns the node at the given index
    def at(index)
        current = @head
        index.times do
            current = current.next_node
        end
        current
    end

# #pop removes the last element from the list
    def pop
        last = size
        at(last - 2).next_node = nil
    end

# #contains? returns true if the passed in value is in the list and otherwise returns false.
    def contains?(val)
        current = @head
        while current.next?
            current = current.next_node
           return true if current.value == val
        end
        false
    end
# #find(data) returns the index of the node containing data, or nil if not found.
    def find(val)
        count = 1
        current = @head
        return 0 if current.value == val
        while current.next?
            current = current.next_node
            return count if current.value == val
            count += 1
        end
        nil
    end

# #to_s represent your LinkedList objects as strings, so you can print them out and preview them in the console.
# The format should be: ( data ) -> ( data ) -> ( data ) -> nil
    def to_s
        current = @head
        printout = "( #{@head.value} ) -> "
        while current.next?
            current = current.next_node
            printout += "( #{current.value} ) -> "
        end
        printout += "( nil )"
    end

### Extra Credit

# #insert_at(index) that inserts the node at the given index
    def insert_at(value, index)
        current = @head
        (index - 1).times do
            current = current.next_node
        end

        current.next_node = Node.new(value, current.next_node)
     
    end
# #remove_at(index) that removes the node at the given index. (You will need to update the links of your nodes in the list when you remove a node.)
    def remove_at(index)
        current = @head
        (index - 1).times do
            current = current.next_node
        end

        current.next_node = current.next_node.next_node
    end
end

