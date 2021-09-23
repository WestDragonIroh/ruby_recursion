def merge_sort (arr)
    return arr if arr.length == 1
    left = merge_sort(arr[0...(arr.length / 2 )])
    right = merge_sort(arr[(arr.length / 2)..(arr.length - 1)])
    return left + right
end

array = [5, 2, 1, 3, 6, 4]
p merge_sort(array)