# binary_search.rb

primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61,
          67, 71, 73, 79, 83, 89, 97]


def binary_search(array, search_item, min = 0, max = array.size - 1)
  middle = (min + max) / 2

  if max < min
    return nil
  elsif array[middle] > search_item
    max = middle - 1
    binary_search(array, search_item, min, max)
  elsif array[middle] < search_item
    min = middle + 1
    binary_search(array, search_item, min, max)
  elsif array[middle] == search_item
    return middle
  end
end

puts binary_search(primes, 2)
puts binary_search(primes, 3)
puts binary_search(primes, 97)
puts binary_search(primes, 24)
