def merge_sort(arr)
    array = []

    if arr.length <= 1
        return arr
    else
        left,right = arr.each_slice( (arr.size/2.0).round ).to_a
        arr_a = merge_sort(left)
        arr_b = merge_sort(right)
    end

    until arr_a.empty? || arr_b.empty?
        array << (arr_a[0] <= arr_b[0] ? arr_a.shift : arr_b.shift)
    end
    
    array + arr_a + arr_b
end


puts merge_sort([2,5,7,1,9,3])