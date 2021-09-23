def fibs (n)
    arr = []
    (0..n).each {|i| i == 0 ? arr << 0 : i == 1 ? arr << 1 : arr << arr[-1] + arr[-2]}
    arr
end

def fibs_rec (n)
    return [0] if n == 0
    return [0,1] if n == 1
    arr = fibs_rec(n-1)
    arr << arr [-1] + arr [-2]
end

puts fibs(35)
puts fibs_rec(35)