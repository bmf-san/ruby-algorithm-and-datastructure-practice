def count_sort(s, max_val)
  count = Array.new(max_val + 1, 0)
  s.each{|num| count[num] += 1}

  (1..max_val).each{|i|count[i] += count[i-1]}

  sorted = Array.new(s.length)

  (s.length-1).downto(0) do |i|
    num = s[i]
    count[num] -= 1
    sorted[count[num]] = num
  end

  sorted
end
