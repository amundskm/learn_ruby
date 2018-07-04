def fib(x)
    a1 = 1
    a2 = 1
    (x - 2).times do
        a3 = a1 + a2
        a1 = a2
        a2 = a3
    end
    a2
end

puts "fib #{fib(5)}"
puts "fib #{fib(10)}"
puts "fib #{fib(0)}"
puts "fib #{fib(1)}"

def fib_rec(x)
    (x < 3)? (1) : (fib_rec(x - 1) + fib_rec(x - 2))
end

puts "fib_rec #{fib_rec(5)}"
puts "fib_rec #{fib_rec(10)}"
puts "fib_rec #{fib_rec(0)}"
puts "fib_rec #{fib_rec(1)}"
