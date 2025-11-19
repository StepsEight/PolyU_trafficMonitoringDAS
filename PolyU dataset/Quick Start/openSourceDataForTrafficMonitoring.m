%% Quick Start codes
%
% Author Yinghuan Li at the Hong Kong Polytechnic University on 2025/11/19

% Read the traffic monitoring data into workspace
filename = "fileLocation\tunnelTrafficMonitoring_0_5min.mat";
trafficMonitoringData = load(filename);
shapeDate = size(trafficMonitoringData);

% Filtering DAS data in vehicle vibration frequency band
fs = 2000;
for i = 1: shapeDate(1)
     trafficMonitoringData(i, :) = lowpass(trafficMonitoringData(i, :), 2, fs);
end

% The block normalization algorithm
A = trafficMonitoringData;
% Settiing the sub block size
blockSize = [12, 15];

% Calculating the number of the sub-block
numBlocksRow = size(A, 1) / blockSize(1);
numBlocksCol = size(A, 2) / blockSize(2);

% Initialized the matrix after normalization
normalizedA = A;

% Iterate over all the sub-block
for i = 1:numBlocksRow
    for j = 1:numBlocksCol
        % Calculating the index range of the current sub-block
        rowStart = (i-1) * blockSize(1) + 1;
        rowEnd = i * blockSize(1);
        colStart = (j-1) * blockSize(2) + 1;
        colEnd = j * blockSize(2);
        
        % Extracting the current sub-block and the corresponding mask
        block = A(rowStart:rowEnd, colStart:colEnd);
        minVal = min(block(:));
        maxVal = max(block(:));
        normalizedBlock = (2*(block - minVal) / (maxVal - minVal)) -1;
        normalizedA(rowStart:rowEnd, colStart:colEnd) = normalizedBlock;
    end
end
