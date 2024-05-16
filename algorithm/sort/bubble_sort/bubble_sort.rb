def bubble_sort(n)
  (0...n.length - 1).each do |i|
    (0...n.length - i - 1).each do |j|
      # Compare adjacent values
      if n[j] > n[j + 1]
        # Swap adjacent values
        n[j], n[j + 1] = n[j + 1], n[j]
      end
    end
  end

  n
end
