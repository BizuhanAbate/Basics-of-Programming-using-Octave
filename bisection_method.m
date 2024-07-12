function root = bisection_method(func, a, b, tol, max_iter)
    % Bisection method to find root of func in interval [a, b]
    % Input:
    %   func: Function handle representing f(x)
    %   a, b: Initial interval endpoints where root exists, f(a)*f(b) < 0
    %   tol: Tolerance (stopping criterion based on the size of the interval)
    %   max_iter: Maximum number of iterations
    % Output:
    %   root: Approximated root of func within tolerance

    % Check initial conditions
    if func(a) * func(b) >= 0
        error('Function does not change sign over interval [a, b].');
    end

    % Initialize variables
    iter = 0;
    while (b - a) / 2 > tol
        iter = iter + 1;
        c = (a + b) / 2; % Midpoint
        if func(c) == 0
            break;
        elseif func(a) * func(c) < 0
            b = c; % Root is in [a, c]
        else
            a = c; % Root is in [c, b]
        end

        % Check if max iterations reached
        if iter >= max_iter
            warning('Maximum iterations reached.');
            break;
        end
    end

    root = (a + b) / 2; % Final root approximation
end

