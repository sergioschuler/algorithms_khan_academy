# manual_sort_recursive.rb

def manual_sort(unsorted_ary, sorted_ary = [])
  return sorted_ary if unsorted_ary.empty?

  smallest_value = unsorted_ary.first
  smallest_index = 0
  
  unsorted_ary.each_with_index do |value, index|
    if value < smallest_value
      smallest_value = value
      smallest_index = index
    end
  end

  sorted_ary.push(smallest_value)
  unsorted_ary.delete_at(smallest_index)

  manual_sort(unsorted_ary, sorted_ary)
end

array = [10, -5, 2, 10, 6, 1, 20, 4]
print manual_sort(array)
