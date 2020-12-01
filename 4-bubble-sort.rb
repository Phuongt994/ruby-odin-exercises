# Bubble sort - Odin project ruby exercises

def bubble_sort(arr)
    completed = false

    until completed == true do
        has_swapped = false
        arr.each_index do |idx|
            if idx < arr.length - 1
                if idx < arr.length - 1 && arr[idx] > arr[idx + 1]
                    # swap
                    swap_value = arr[idx]
                    arr[idx] = arr[idx + 1]
                    arr[idx + 1] = swap_value
                    has_swapped = true
                end
            else 
                has_swapped == false ? completed = true : completed = false
            end
        end
    end
    return arr 
end

p bubble_sort([4,3,78,66,0,1])
# => [0,2,2,3,4,78]