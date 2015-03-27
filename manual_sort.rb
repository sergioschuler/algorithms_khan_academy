# manual_sort.rb

def manual_sort(array)
  
  array_length = array.length - 1

  for i in 0..array_length
    smallest_value = array[i]

    for i2 in (i + 1)..array_length
      if array[i] > array[i2]
        temp = array[i]
        array[i] = array[i2]
        array[i2] = temp
      end
    end
  end

  return array
end

array = [10, -5, 2, 10, 6, 1, 20, 4]
print manual_sort(array)