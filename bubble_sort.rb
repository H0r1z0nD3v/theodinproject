def bubble_sort (numbers_to_sort)
  numbers_to_sort.each_index do | index |
    if index+1 < numbers_to_sort.length && numbers_to_sort[index]>numbers_to_sort[index+1]
      temp = numbers_to_sort[index]
      numbers_to_sort[index] = numbers_to_sort[index+1]
      numbers_to_sort[index+1] = temp
      bubble_sort(numbers_to_sort)
    end
  end
  return numbers_to_sort
end
