%% Clean up
% open "extra" windows.
% clear all
% close all


%% Variables
input_dir = '/common/cs/cs181m/data/horse/';
output_dir = './';
input_file_ext = 'jpg';
files = dir([input_dir '*.' input_file_ext]);

collect_data(); 
