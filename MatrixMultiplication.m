function C = matrix_multiply(A, B)
    % Check dimensions
    [rows_A, cols_A] = size(A);
    [rows_B, cols_B] = size(B);

    % Ensure matrix dimensions are compatible for multiplication
    if cols_A ~= rows_B
        error('Matrix dimensions must agree for multiplication.');
    end

    % Initialize result matrix C
    C = zeros(rows_A, cols_B);

    % Perform matrix multiplication
    for i = 1:rows_A
        for j = 1:cols_B
            for k = 1:cols_A
                C(i, j) = C(i, j) + A(i, k) * B(k, j);
            end
        end
    end
end
% Example usage:
A = [
    1, 2, 3;
    4, 5, 6
];

B = [
    7, 8;
    9, 10;
    11, 12
];

C = matrix_multiply(A, B);
disp(C);

