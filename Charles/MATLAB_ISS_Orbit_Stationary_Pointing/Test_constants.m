% Constants file.
% All constants should go in one m file. 

Re = 6371.2*1000; %radius of earth in m
altitude = 370*1000 + Re; %200,000 m from surface
%inertia = [0.1043, 0, 0; 0, 0.1020, 0; 0, 0, 0.0031]; %1kg mass 
%inertia = [133/60000, 0, 0;0, 133/60000, 0;0, 0, 133/60000]; %1.33kg 1U
%cube
inertia = [8.96*10^-3, 0, 0; 0, 8.65*10^-3, 0; 0, 0, 1.73*10^-2]; % 3U cube sat
dummy_matix = blkdiag([1 2; 3 4], 1);
k = 0.00000005; %c^2/(4*norm(inertia)) %spring constant 
c = 0.000015; %dampng constant 
int = 0.0000000001; %integral constant
orbit_period = 5400; %secs = 90 mins
incl = 51.6*pi()/180; %Orbital Inclanation at 51.6 degrees


%PD ONLY
%k = 0.00000001
%c = 0.00001

%Interesting results
%k = 0.00000001
%c = 0.00001
%int = 0.00000000007

%This along with that if statement in ODEs gives decent results
%k = 0.00000001; %c^2/(4*norm(inertia)) %spring constant 
%c = 0.00001; %damping constant 
%int = 0.0000001; %integral constant

%k = 0.00000025; %c^2/(4*norm(inertia)) %spring constant 
%c = 0.00001267; %damping constant 
%int = 0.000001; %integral constant

%KE increases sometimes??

%best
%k = 0.00000001; %c^2/(4*norm(inertia)) %spring constant 
%c = 0.00001; %damping constant 
%int = 0.00000000007; %integral constant
%{
k = 0.00000005; %c^2/(4*norm(inertia)) %spring constant
c = 0.000015; %dampng constant 
int = 0.0000000001; %integral constant
Gain_1
%}


