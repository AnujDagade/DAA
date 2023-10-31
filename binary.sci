
function index = binarySearch(arr, target)
    left = 1;
    right = length(arr);
    
    while left <= right
        mid = left + (right - left) / 2;
        mid = floor(mid); // Ensure mid is an integer
        
        if arr(mid) == target
            index = mid;
            return;
        elseif arr(mid) < target
            left = mid + 1;
        else
            right = mid - 1;
        end
    end
    
    // Element not found
    index = -1;
end

// Example usage
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
target = 6;
result = binarySearch(arr, target);

if result == -1
    disp("Element not found in the array.")
else
    disp(result);
end
