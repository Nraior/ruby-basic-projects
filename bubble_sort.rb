def bubble_sort(arr)
  arr_length = arr.length
  (0..arr_length-1).each do |first_iteration_index|
    changed = false
    (0..(arr_length-first_iteration_index-1)).each do | index|
      unless (arr[index + 1].nil?)
        if arr[index] > arr[index + 1]
          changed = true
          arr[index], arr[index + 1] = arr[index + 1], arr[index]
        end
      else
      end
    end
    break unless changed
    p arr
  end
  arr
end

p bubble_sort([4,3,78,2,0, 2])