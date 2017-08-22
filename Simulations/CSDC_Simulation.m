% John KM Jung
cd 'C:\Users\Lee\Documents\MATLAB\CSDC' % Change Directory

clc
close all
clear all
format long

% Constants 
constants % All constants in one file.

% Initial Conditions

IC = [-0.5037, -0.3394, -0.0793, 1.0, 0.35, -0.17, 0.05, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0].';
            %quaternion           n          omega           Torque       wheel_w
% Simulation time.
t0 = 0; % s
t_max = 25000; % s
t_div = 250001;
t_span = linspace(t0,t_max,t_div); % Total simulatoin time.
% t_span = [0 t_max];

% Simulation options.
% options = odeset('AbsTol',1e-9,'RelTol',1e-9); % This changes the integration tolerence.
% options = odeset('AbsTol',1e-3,'RelTol',1e-3); % This changes the integration tolerence.
options = [];

tic
waitbar_handle = waitbar(0,'Numerical Integration Progress');
output_flag = 0;

% Use any solver; I use these three the most. 
  [t,x_out] = ode45(@ODEs,t_span,IC,options,output_flag,dummy_matix,t_span,waitbar_handle);
% [t,x_out] = ode15s(@ODEs,t_span,IC,options,output_flag,dummy_matix,t_span,waitbar_handle);
% [t,x_out] = ode113(@ODEs,t_span,IC,options,output_flag,dummy_matix,t_span,waitbar_handle);

close(waitbar_handle);
time_stamp = toc; % The tic above and the toc here will time how long the simulation takes.

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Post Processing
% post_processing

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Plot data
plot_script
Angle_plot

% profile off;
% profview;

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Save all the data. (You never know when you'll need it again.)
save sim_data_v1