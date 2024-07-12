function idx = binary_search(sorted_array, target)
    % Binary search on a sorted array
    % Input:
    %   sorted_array: Sorted array of numbers
    %   target: Element to search for
    % Output:
    %   idx: Index of the target element in the array (1-based index), or
    %        0 if the target element is not found

    % Initialize search boundaries
    left = 1;
    right = length(sorted_array);

    % Perform binary search
    while left <= right
        mid = floor((left + right) / 2);

        % Check if target is present at mid
        if sorted_array(mid) == target
            idx = mid;
            return;
        elseif sorted_array(mid) < target
            % If target is greater, ignore left half
            left = mid + 1;
        else
            % If target is smaller, ignore right half
            right = mid - 1;
        end
    end

    % If we reach here, the target is not in the array
    idx = 0;
end

