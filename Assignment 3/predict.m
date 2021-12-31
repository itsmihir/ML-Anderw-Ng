function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(m, 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%

X = X';
a1 = [ones(1,m); X];

z2 = Theta1 * a1;
a2 = sigmoid(z2);

a2 = [ones(1,m); a2];

z3 = Theta2 * a2;
a3 = sigmoid(z3);

[maxm,p] = max(a3);
p = p';

% Dim
% s1 = units at level 1, s2 = units at level 2, s3 = units at level 3
% X = m * s1
% Theta1 = s2 * (s1 + 1)
% Theta2 = s3 * (s2 + 1)
% a1 = (s1 + 1) * m;
% a2 = (s2 + 1) * m
% a3 = s3 * m
% =========================================================================


end
