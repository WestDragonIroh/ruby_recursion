def merge_sort (arr)
    return arr if arr.length == 1
    left = merge_sort(arr[0...(arr.length / 2 )])
    right = merge_sort(arr[(arr.length / 2)..(arr.length - 1)])

    sort = []
    until left.empty? || right.empty? 
        left[0] <= right[0] ? sort << left.shift : sort << right.shift 
    end

    return sort + left + right
end

array = [5, 2, 1, 3, 6, 4]
p merge_sort(array)