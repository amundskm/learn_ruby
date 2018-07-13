class Node
    attr_accessor :value, :next_node
    # containing a #value method and a link to the #next_node, set both as nil by default.
    def initialize (value = nil, next_node = nil)
        @value = value
        @next_node = next_node
    end

    def next?
        !@next_node.nil?
    end
end