def selection_sort(arr)
  n = arr.length
  for i in 0..n-1
    min = i
    for j in i+1..n-1
      if arr[j] < arr[min]
        min = j
      end
    end
    arr[i], arr[min] = arr[min], arr[i]
  end
  arr
end
