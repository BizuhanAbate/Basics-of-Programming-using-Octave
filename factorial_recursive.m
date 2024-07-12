function result = factorial_recursive(n)
    % Recursive function to compute factorial
    % Input:
    %   n: Non-negative integer
    % Output:
    %   result: Factorial of n, i.e., n!

    % Base case: factorial of 0 is 1
    if n == 0
        result = 1;
    else
        % Recursive case: n! = n * (n-1)!
        result = n * factorial_recursive(n - 1);
    end
end

