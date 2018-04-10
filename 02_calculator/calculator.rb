def add(a, b)
    return ans = a + b;
end

def subtract(a, b)
    return ans = a - b;
end

def sum(array)
    return ans = array.inject(0){|sum,x| sum + x }
end

def multiply(*others)

    return ans = others.inject(1){|prod,x| prod * x }
end

def power(a, b)

    return ans = a ** b
end

def factorial(a)
    return (1..a).inject(:*) || 1
end 