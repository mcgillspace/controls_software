
%clear all
clc
close all
format long

% profile on; % Try uncommenting this ``profile off;'' code at the bottom.

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Constants 
Test_constants % All constants in one file. 

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Initial conditions.
IC = [-0.003 -0.901 .3 -.312 0.01 0.01 0.01 0 0 0].'; 

%for tangent orbit
%IC = [0 0 0 1 0 -2*pi/orbit_period 0].'; %erase torque from dynamics eqn

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Simulation time.
t0 = 0; % s
t_max = 50000; % s 
t_div = 50000 + 1;    
t_span = linspace(t0,t_max,t_div); % Total simulation time.
% t_span = [0 t_max];

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Simulation options.
options = odeset('AbsTol',1e-11,'RelTol',1e-11); % This changes the integration tolerence.
%options = [];
%Test_find
tic
output_flag = 0;

% Use any solver; I use these three the most. 
[t,x_out] = ode45(@Test_ODEs,t_span,IC,options,output_flag,dummy_matix,t_span);
% [t,x_out] = ode15s(@ODEs,t_span,IC,options,output_flag,dummy_matix,t_span,waitbar_handle);
% [t,x_out] = ode113(@ODEs,t_span,IC,options,output_flag,dummy_matix,t_span,waitbar_handle);

%[t,x_out] = ode45(@Test,t_span,IC,options,output_flag,dummy_matix,t_span,waitbar_handle);

time_stamp = toc
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Post Processing
%post_processing

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%find magnetic moments
PD_Mag_calc

% Plot omega and epsilon data vs. time
PD_plot_script

% Check if f() = mag(epsilon)^2 + mag(eta)^2 - 1 = 0 to see if code is fine
accuracy_check

% Convert to angles
Test_angle

% Check energy
energy_check


% profile off;
% profview;

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Save all the data. (You never know when you'll need it again.)
save sim_data_v1