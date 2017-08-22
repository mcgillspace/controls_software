function [x_dot] = ODEs(t,x,output_flag,~,t_span,waitbar_handle)
%% Call Constants %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
constants

DC = [0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0].'; % Desired State

C = 0.00000001; % Gain 1
K = 0.00001;    % Gain 2

r = [Altitude*cos(period*t); Altitude*sin(period*t)*cos(incl); Altitude*sin(period*t)*sin(incl)]; % Position in ECI frame
b_inertial = EarthMagField(r,t); % Earth Magnetic Field in ECI frame

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Parametrization %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Current State
C_e = [x(1); x(2); x(3)]; % Current Orientation (Quaternion)
C_n = x(4);
C_w = [x(5); x(6); x(7)]; % Current Angular Velocity
q_c = [-x(1); -x(2); -x(3); x(4)]; % 4x4 Quaternion

% Desired State
% D_e = [DC(1); DC(2); DC(3)]; % Desired Orientation (Quaternion)
% D_n = DC(4);
D_w = [DC(5); DC(6); DC(7)]; % Desired Angular Velocity
q_r = [DC(1); DC(2); DC(3); DC(4)]; q_ref = SkewSymmetry(q_r); % 4x4 Quaternion

% Cross Product Operator
rx = CrossProductFactor(r);

ex_c = CrossProductFactor(C_e); % Of Current Orientation
wx_c = CrossProductFactor(C_w); % Of Current Angular Velocity
% ex_d = CrossProductFactor(D_e); % Of Desired Orientation
% wx_d = CrossProductFactor(D_w); % Of Desired Angular Velocity

% Quaternion to Rotation Matrix
    C_current = (2*C_n^2-1)*I + 2*(C_e*C_e.') - 2*C_n*ex_c;
%     C_reference = (2*D_n^2-1)*I + 2*(D_e*D_e.') - 2*D_n*ex_d;
    
%% Controls %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

persistent t_diff
    if t == 0
        t_diff = t;
        dt = 0;
    else
        dt = t - t_diff;
        t_diff = dt + t_diff;
    end
assignin('base','t_diff',t_diff);

%time taken to reach angular velocity
persistent t_angular
if (C_w(1) <= 0.01) && (C_w(2) <= 0.01) && (C_w(3) <= 0.01) && (norm(t_angular) == 0)
    t_angular = t;
    assignin('base','t_angular',t_angular);
end

%time taken to reach quaternion tolerance
persistent t_quaternion
if (t > 5000) &&(C_e(1) <= 0.01) && (C_e(2) <= 0.01) && (C_e(3) <= 0.01) && (norm(t_quaternion) == 0)
    t_quaternion = t;
    assignin('base','t_quaternion',t_quaternion);
end
    
persistent Torque_m
persistent Torque_w

% Disturbance Torques
    Sun_D = C_current*[0; 0; 0]; % Nm less significant
    Air_D = C_current*[0; -0.5*rho*v^2*Cd*(0.1*0.3)*0.15; 0]; % Nm
    Grav_D = (3*gc/Altitude^5)*(rx*sat_I*r); % Nm
    
if t >= t_angular
    e_q = (q_ref*q_c); % Proportional quaternion error
    e_w = (D_w - C_w); % Derivative error
    
    if isempty(Torque_w)
        Torque_w = Torque_m;
        wheel_w = [0; 0; 0];
    else
        wheel_w = (sat_I\Torque_w)*(dt);
        wheel_stiff = wx_c*(sat_I*C_w + wheel_I*wheel_w);
        Torque_w = C*e_q(1:3,1) + K*e_w + wheel_stiff + Sun_D + Air_D + Grav_D;
    end
    Torque = Torque_w;
else
    wheel_w = [0; 0; 0];
    b = C_current*b_inertial; % Earth Magnetic Field in Quaternion
    dipole_m = -k*(cross(b,C_w))/(norm(b))^2; % Dipole moment
    Torque_m = cross(dipole_m,b);
    Torque = Torque_m;
end

assignin('base','Torque_m',Torque_m);
assignin('base','Torque_w',Torque_w);

% Momentum dumping
%     dipole_m = (-k*wheel_stiff)*b/(norm(b));
    
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Output %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Form dot_x = f(x,u) system
dot_x1 = 1/2*(C_n*I + ex_c)*C_w;
dot_x2 = -1/2*C_e.'*C_w;
dot_x3 = sat_I\(Torque - wx_c*sat_I*C_w);

dot_x = [dot_x1; dot_x2; dot_x3; Torque(1); Torque(2); Torque(3); wheel_w(1); wheel_w(2); wheel_w(3)];

if (output_flag == 0)
    % Output the rate of change of x.
    x_dot = dot_x;
    waitbar(t/t_span(length(t_span)),waitbar_handle);
    
elseif (output_flag == 1)   
    % This is for other kinds of post processing; not needed right now.
    x_dot = x;
    
end