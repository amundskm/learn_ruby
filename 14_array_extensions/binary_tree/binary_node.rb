class Node

    def initialize(val = nil, parent = nil, left = nil, right = nil)
        @value = val
        @parent = parent
        @left = left
        @right = right
    end

    def has_child?
        (!@left.nil?) && (!@right.nil?)
    end

    def has_parent?
        !@parent.nil?
    end
end