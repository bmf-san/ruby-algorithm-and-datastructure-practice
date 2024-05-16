def insertion_sort(n)
  for i in 1..(n.length - 1)
    j = i
    while j > 0 && n[j - 1] > n[j]
      n[j - 1], n[j] = n[j], n[j - 1]
      j -= 1
    end
  end
  n
end
