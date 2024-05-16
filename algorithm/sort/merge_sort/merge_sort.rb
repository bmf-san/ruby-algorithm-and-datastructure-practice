def merge(a, b)
  r = []
  i = 0
  j = 0

  while i < a.length && j < b.length
    if a[i] <= b[j]
      r.push(a[i])
      i += 1
    else
      r.push(b[j])
      j += 1
    end
  end

  while i < a.length
    r.push(a[i])
    i += 1
  end

  while j < b.length
    r.push(b[j])
    j += 1
  end

  r
end

def merge_sort(n)
  return n if n.length < 2

  middle = n.length / 2
  a = merge_sort(n[0...middle])
  b = merge_sort(n[middle..])
  merge(a, b)
end
