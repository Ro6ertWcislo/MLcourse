function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.1;
minError = 10000000;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%
Cs =  [0.01; 0.03; 0.1; 0.3; 1; 3; 10; 30];
sigmas =  [0.01; 0.03; 0.1; 0.3; 1; 3; 10; 30];

%for c = 1:8
%  for s= 1:8
%     %fprintf('C =%f and sigma = %f.',Cs(c),sigmas(s));
%     kernelFun = @(a,b)(gaussianKernel(a,b,sigmas(s)));
%     model = svmTrain(X,y,Cs(c),kernelFun,1e-3,5);
%     predictions = svmPredict(model,Xval);
 %    error =  mean(double(predictions ~= yval));
 %    fprintf('error = %f.\n',error);
 %    if error < minError
%       minError=error;
%       C=c;
%       sigma = s;
%       endif
%    endfor
%  endfor

%  fprintf('\n\nC =%f and sigma = %f, error = %f\n',C,sigma,minError);
% =========================================================================

end
