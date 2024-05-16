def quick_sort(array)
  return array if array.length <= 1

  pivot = array.sample

  low, middle, high = [], [], []

  array.each do |num|
    case num <=> pivot
    when -1
      low << num
    when 0
      middle << num
    when 1
      high << num
    end
  end

  quick_sort(low) + middle + quick_sort(high)
end
