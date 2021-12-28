function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; 

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

posIndexes = find(y == 1);
negIndexes = find(y == 0);

plot(X(posIndexes,1),X(posIndexes,2),'g+');

hold on;

plot(X(negIndexes,1),X(negIndexes,2),'ko');


% =========================================================================



hold off;

end
