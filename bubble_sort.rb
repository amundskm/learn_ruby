<<<<<<< HEAD
# INPUTS: 1 array
# OUTPUTS: The same array, but sorted.
# METHOD: Bubble sort method in which each element of an array is compared to the element after it.  If the element is larger than the next element,
# the two elements switch positions. This is continued until the whole array is sorted.

# Run a while loop, after comparing the whole array have a flag if any elements switched positions, if not sorting is complete.
def bubble_sort(array)
        
    n = array.length

    while n > 1
        (n-1).times do |i|
            if array[i] > array[i + 1]
                array[i], array[i + 1] = array[i + 1], array[i]
            end
        end
        n -= 1
    end

    puts array
end

bubble_sort([2, 1, 4, 3])

def bubble_sort_by(array)
    n = array.length

    while n > 1
        (n-1).times do |i|
            diff = yield(array[i], array[i + 1] )
            if diff > 0
                array[i], array[i + 1] = array[i + 1], array[i]
            end
        end
        n -= 1
    end

    puts array
end


bubble_sort_by(["hi","hello","hey"]) do |left,right|
    left.length - right.length
=======
# INPUTS: 1 array
# OUTPUTS: The same array, but sorted.
# METHOD: Bubble sort method in which each element of an array is compared to the element after it.  If the element is larger than the next element,
# the two elements switch positions. This is continued until the whole array is sorted.

# Run a while loop, after comparing the whole array have a flag if any elements switched positions, if not sorting is complete.
def bubble_sort(array)
        
    n = array.length

    while n > 1
        (n-1).times do |i|
            if array[i] > array[i + 1]
                array[i], array[i + 1] = array[i + 1], array[i]
            end
        end
        n -= 1
    end

    puts array
end

bubble_sort([2, 1, 4, 3])

def bubble_sort_by(array)
    n = array.length

    while n > 1
        (n-1).times do |i|
            diff = yield(array[i], array[i + 1] )
            if diff > 0
                array[i], array[i + 1] = array[i + 1], array[i]
            end
        end
        n -= 1
    end

    puts array
end


bubble_sort_by(["hi","hello","hey"]) do |left,right|
    left.length - right.length
>>>>>>> 67d43f7a1c00be8d14dce77517db9aebb29d7309
end