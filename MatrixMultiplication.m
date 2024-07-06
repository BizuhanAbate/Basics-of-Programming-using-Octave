function result = MatrixMultiplication(A, B)
    % Get the number of rows and columns for both matrices
    [rows_A, cols_A] = size(A);
    [rows_B, cols_B] = size(B);

    % Check if multiplication is possible
    if cols_A != rows_B
        error('Number of columns of A must equal number of rows of B');
    end

    % Initialize the result matrix with zeros
    result = zeros(rows_A, cols_B);

    % Perform the multiplication
    for i = 1:rows_A
        for j = 1:cols_B
            for k = 1:cols_A
                result(i, j) += A(i, k) * B(k, j);
            end
        end
    end
end

