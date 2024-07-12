%Calculate the mean, median, and mode of a given dataset
% Example dataset
data = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5];

% Calculate mean
mean_value = mean(data);
fprintf('Mean: %.2f\n', mean_value);

% Calculate median
median_value = median(data);
fprintf('Median: %.2f\n', median_value);

% Calculate mode
mode_value = mode(data);
fprintf('Mode: %d\n', mode_value);

