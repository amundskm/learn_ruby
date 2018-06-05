module Enumerable
    def my_each
        i = 0
        while i < self.size
            yield(self[i])  
            i+=1      
        end
        self
    end

    def my_each_with_index
        i = 0
        while i < self.size
            yield(self[i], i)  
            i+=1      
        end
        self
    end

    def my_select
        arr = []
        self.my_each{ |x| arr.push(x) if yield(x)}
        arr
    end

    def my_all?
        false_flag = true
        self.my_select{ |x| false_flag = false if yield(x) == false}
        false_flag
    end

    def my_any?
        true_flag = false
        self.my_select{ |x| true_flag = true if yield(x)}
        true_flag
    end

    def my_none?
        false_flag = true
        self.my_select{ |x| false_flag = false if yield(x)}
        false_flag
    end

    def my_count(var = nil)
            i = 0
            if var
                self.my_each { |x| i += 1 if x == var}
            elsif block_given?
                self.my_each { |x| i += 1 if yield(x)}
            else
                i = self.size
            end
            i
    end

    def my_map
        arr = []
        self.my_each{ |x| arr.push( yield(x))}
        arr
    end

    def my_inject(ans = nil)
        ans = self.shift if ans == nil   
        self.my_each{ |x|  ans = yield(ans, x)}
        ans
    end

end

=begin 
puts "each: "
[5,4,3,2,1].each { |x| print x}
puts " "
puts "my_each: "
[5,4,3,2,1].my_each { |x| print x}
puts " " 

puts "each_with_index: "
[5,4,3,2,1].each_with_index { |x, i| puts "x = #{x}, i = #{i}"}
puts " "
puts "my_each_with_index: "
[5,4,3,2,1].my_each_with_index { |x, i| puts "x = #{x}, i =#{i}"}
puts " "

puts "select: "
puts [5,4,3,2,1].select { |x| x > 3}
puts " "
puts "my_select:"
puts [5,4,3,2,1].my_select { |x| x > 3}

puts "all?: "
puts [5,4,3,2,1].all? { |x| x < 3}
puts [5,4,3,2,1].all? { |x| x < 6}
puts " "
puts "my_all?:"
puts [5,4,3,2,1].my_all? { |x| x < 3}
puts [5,4,3,2,1].my_all? { |x| x < 6}

puts "all?: "
puts [5,4,3,2,1].any? { |x| x < 3}
puts [5,4,3,2,1].any? { |x| x > 6}
puts " "
puts "my_all?:"
puts [5,4,3,2,1].my_any? { |x| x < 3}
puts [5,4,3,2,1].my_any? { |x| x > 6}

puts "none?: "
puts [5,4,3,2,1].none? { |x| x < 3}
puts [5,4,3,2,1].none? { |x| x > 6}
puts " "
puts "my_none?:"
puts [5,4,3,2,1].my_none? { |x| x < 3}
puts [5,4,3,2,1].my_none? { |x| x > 6}

puts "count: "
puts [5,4,3,2,1].count(2)
puts [5,4,3,2,1].count
puts [5,4,3,2,1].count{ |x| x == 2}
puts " "
puts "my_count: "
puts [5,4,3,2,1].my_count(2)
puts [5,4,3,2,1].my_count
puts [5,4,3,2,1].my_count{ |x| x == 2}

puts "map:"
puts [5,4,3,2,1].map { |x| x * 2}
puts "my_map:"
puts [5,4,3,2,1].my_map { |x| x * 2}
=end
def multiply_els(arr)
    puts arr.inject { |product, element| product * element}
end

def multiply_my_els(arr)
    puts arr.my_inject { |product, element| product * element}
end

multiply_els([2,4,5])
multiply_my_els([2,4,5])
