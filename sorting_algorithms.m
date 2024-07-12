%% Bubble Sort
function sorted_array = bubble_sort(arr)
    n = length(arr);
    sorted_array = arr;

    for i = 1:n-1
        % Flag to optimize if array is already sorted
        swapped = false;

        for j = 1:n-i
            if sorted_array(j) > sorted_array(j+1)
                % Swap elements
                temp = sorted_array(j);
                sorted_array(j) = sorted_array(j+1);
                sorted_array(j+1) = temp;

                % Set swapped flag
                swapped = true;
            end
        end

        % If no two elements were swapped, array is sorted
        if ~swapped
            break;
        end
    end
end

%% Merge Sort
function sorted_array = merge_sort(arr)
    n = length(arr);

    % Base case: if array has one or zero elements, it's already sorted
    if n <= 1
        sorted_array = arr;
        return;
    end

    % Split array into two halves
    mid = floor(n / 2);
    left = arr(1:mid);
    right = arr(mid+1:end);

    % Recursively sort each half
    left_sorted = merge_sort(left);
    right_sorted = merge_sort(right);

    % Merge the sorted halves
    sorted_array = merge(left_sorted, right_sorted);
end

function merged_array = merge(left, right)
    % Merge two sorted arrays into one sorted array
    merged_array = [];
    i = 1;
    j = 1;

    while i <= length(left) && j <= length(right)
        if left(i) <= right(j)
            merged_array = [merged_array, left(i)];
            i = i + 1;
        else
            merged_array = [merged_array, right(j)];
            j = j + 1;
        end
    end

    % Append remaining elements
    if i <= length(left)
        merged_array = [merged_array, left(i:end)];
    end

    if j <= length(right)
        merged_array = [merged_array, right(j:end)];
    end
end

%% Quicksort
function sorted_array = quicksort(arr)
    % Base case: if array has one or zero elements, it's already sorted
    if length(arr) <= 1
        sorted_array = arr;
        return;
    end

    % Choose a pivot element (middle element)
    pivot = arr(ceil(length(arr) / 2));

    % Partition the array into elements less than pivot, equal to pivot, and greater than pivot
    less_than = arr(arr < pivot);
    equal_to = arr(arr == pivot);
    greater_than = arr(arr > pivot);

    % Recursively sort the less than and greater than partitions
    sorted_less = quicksort(less_than);
    sorted_greater = quicksort(greater_than);

    % Concatenate sorted partitions
    sorted_array = [sorted_less, equal_to, sorted_greater];
end

%% Testing the Algorithms
array = [5, 2, 8, 1, 3, 9, 4, 6, 7];

% Test bubble sort
tic;
sorted_bubble = bubble_sort(array);
time_bubble = toc;
disp(['Bubble Sort: ', mat2str(sorted_bubble)]);
fprintf('Time taken: %.6f seconds\n', time_bubble);

% Test merge sort
tic;
sorted_merge = merge_sort(array);
time_merge = toc;
disp(['Merge Sort: ', mat2str(sorted_merge)]);
fprintf('Time taken: %.6f seconds\n', time_merge);

% Test quicksort
tic;
sorted_quick = quicksort(array);
time_quick = toc;
disp(['Quicksort: ', mat2str(sorted_quick)]);
fprintf('Time taken: %.6f seconds\n', time_quick);

