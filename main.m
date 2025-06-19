%% initialization:
clear; clc;
%% Adding paths for required functions and the MNIST dataset
addpath("Functions");
addpath("MNIST_Dataset");
%% Loading MNIST Data:
% Training data:
X_train = load('X_train_vector_sort_MNIST.mat');
X_train = X_train.X_train_vector_sort;
X_train = X_train/255;

% Testing Data:
X_test = load('X_test_vector_MNIST.mat');
X_test = X_test.data;
X_test = X_test/255;

Y_test = load('Y_test_MNIST');
Y_test = Y_test.data;
Y_test = double(Y_test) + 1;

%% Parameters:
c = 10; m = size(X_test,1);
iteration = 10;
base_num = 15;
start = [1 5924 12666 18624 24755 30597 36018 41936 48201 54052];          % column number showing the start of each class in the Data Matrix   
stop = [5923 12665 18623 24754 30596 36017 41935 48200 54051 60000];       % column number showing the end of each class in the Data Matrix
mu = 0.1;
%% Training 10 Dictionaries for the dataset:
N_test = 200;
t_start = tic;
Dictionary = zeros(m, base_num, c);
for j = 1:c
    D0 = randn(m, base_num);
    Data_mat = X_train(:,start(j):stop(j));
    [D, ~] = Dict_fit_1C(D0, Data_mat, base_num, iteration, mu);
    Dictionary(:,:,j) = D;
    disp('Dictionary ' + string(j) + ' for base number ' + string(base_num) +' is trained')
end
t_end = toc(t_start);
Train_Time = t_end;
[rate, time] = Evaluator_m_V2(Dictionary, X_test(:,1:N_test), Y_test(1:N_test)');
Rate = rate;
Test_Time = time;
%% Results:
fprintf("\nThe Classification Accuracy is " + string(Rate));
fprintf("\nTraining Time is " + string(Train_Time))
fprintf("\nClassification Time for a single data is " + string(Test_Time) +"\n");