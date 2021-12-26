function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %


    % Method 1
    %sigma = zeros(size(X,2),1);
    %for i=1:m
    %    sigma = sigma + (hypothesis(theta,X(i,:)') - y(i)) * X(i,:)' ;
    %end;
    %sigma = sigma / m;
    %theta = theta - alpha * sigma;

    % Method 2
    
   sigma = (1 / m) * X' * (X * theta - y);
   theta = theta - alpha * sigma;

    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

end

% Dim: 
% X = m * (n + 1)
% y = m * 1
% theta = (n + 1) * 1
% sigma = (n + 1) * 1
end
