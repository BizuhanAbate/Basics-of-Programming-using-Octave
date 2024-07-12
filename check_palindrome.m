function is_palindrome = check_palindrome(str)
    % Function to check if a string is a palindrome
    % Input:
    %   str: Input string
    % Output:
    %   is_palindrome: True (1) if str is a palindrome, False (0) otherwise

    % Convert string to lowercase and remove non-alphanumeric characters
    str = lower(str);
    str = regexprep(str, '[^a-z0-9]', '');

    % Check if the string reads the same forwards and backwards
    is_palindrome = strcmp(str, fliplr(str));
end

