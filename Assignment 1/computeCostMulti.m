function J = computeCostMulti(X, y, theta)
%COMPUTECOSTMULTI Compute cost for linear regression with multiple variables
%   J = COMPUTECOSTMULTI(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

%Method 1
J = 0;
for i=1:m
    J = J + (hypothesis(theta,X(i,:)') - y(i)) ^ 2; 
end;
J = J / (2 * m);


%Method 2
J = 1 / (2 * m) * (sum((X * theta - y) .^ 2))

% Dim: 
% X = m * (n + 1)
% y = m * 1
% theta = (n + 1) * 1
% J Real Number
% =========================================================================

end
