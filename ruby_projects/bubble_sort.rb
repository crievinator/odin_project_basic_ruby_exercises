numbers = [4,3,78,2,0,2]

def bubble_sort(arr)
  modified_arr = []
  runs = arr.length

  runs.times do 
    modified_arr = arr.each_with_index do |item, index|
    number = item <=> arr[index.next]
    if number == -1
    elsif number == 0
    elsif number == 1
      temp = arr[index+1]
      arr[index] = temp
      arr[index+1] = item
    else 
    end
    "item #{item} at index: #{index}"
    "item #{arr[index.next]} at index: #{index.next}"
    item <=> arr[index.next]
    end
  end
  p modified_arr
end


bubble_sort(numbers)