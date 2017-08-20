function  [x_dot] = Test_ODEs(t,x,output_flag,dummy_matix,t_span);

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Call constants
Test_constants

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Dynamics

% First, extract states in a convenient form. 

eps = [x(1); x(2); x(3)];
%cross product operator
eps_x = crossop(eps);
eta = x(4);
omega = [x(5); x(6); x(7)];
omega_x = crossop(omega);
x_tilda = [x(8); x(9); x(10)];

dot_eps = (0.5)*(eta*eye(3) + eps_x)*omega; 
dot_eta = (0.5)*(-transpose(eps)*omega);
b = -10e-3;

eps_r = [0; 0; 0];
eta_r = 1;
eps_r_T = transpose(eps_r);
eps_r_x = crossop(eps_r);

C_r = (2*(eta_r^2)-1)*eye(3) + 2*eps_r*eps_r_T - 2*eta_r*eps_r_x;
C_c = (2*(eta^2) - 1)*eye(3) + 2*eps*(eps.') - 2*eta*crossop(eps);
C_e = C_r*inv(C_c);

eta_e = (trace(C_e)+1)^(0.5)/2;

if eta_e == 0 
    eps_e(1,1) = ((C_e(1,1)+1)/2)^.5;
    eps_e(2,1) = sign(C_e(1,2))*((C_e(2,2)+1)/2)^.5;
    eps_e(3,1) = sign(C_e(1,3))*((C_e(3,3)+1)/2)^.5;
else
    eps_e(1,1) = (C_e(2,3)-C_e(3,2))/(4*eta_e);
    eps_e(2,1) = (C_e(3,1)-C_e(1,3))/(4*eta_e);
    eps_e(3,1) = (C_e(1,2)-C_e(2,1))/(4*eta_e);
end

%error = eps;
error = (-1)*eps_e; % '-' taken into account in PID control

dot_x_tilda = b.*x_tilda + error;
%int = -0.0000001*tanh(0.2*((norm(error))^2-0.01)) + 1;

%{
if norm(omega) >= 0.2 %get stable-ish values if this is >=1 for 10e-10 disturbance
    int = 0;
    dot_x_tilda = [0;0;0]; 
else 
    dot_x_tilda = b.*x_tilda + error; 
end 
%}

%disturbance = [0; 10e-9; 0];
disturbance = [0; 0; 0];

%torque_d = -c*omega - k*error - int*x_tilda;
torque_d = -c*omega - k*error;

%time taken to reach quaternion tolerance
persistent t_quaternian
if (t > 5000) && (eps(1) <= 0.01) && (eps(2) <= 0.01) && (eps(3) <= 0.01) && (norm(t_quaternian) == 0)
    t_quaternian = t;
    assignin('base','t_quaternian',t_quaternian);
end

persistent counter
if (norm(counter) == 0)
    counter = 0;
end 
    counter = counter + 1;
    assignin('base','counter',counter);

%PID control
r = [altitude*cos((2*pi/orbit_period)*t), 0*t, altitude*sin((2*pi/orbit_period)*t)];

b_eci = EarthMagField(r.', t);

%rotation_mat = (2*(eta^2) - 1)*eye(3) + 2*eps*(eps.') - 2*eta*crossop(eps);

b_body = C_c * b_eci;

disturbance_body = C_c * disturbance;

torque_t = torque_d - (dot(b_body,torque_d)*b_body)/norm(b_body)^2;

dot_omega = inv(inertia)*(-omega_x * inertia * omega + torque_t + disturbance_body);
dot_x = [dot_eps; dot_eta; dot_omega; dot_x_tilda];
%dot_x = [dot_eps; dot_eta; dot_omega];

if (output_flag == 0)
    % Output the rate of change of x.
    x_dot = dot_x;
    
elseif (output_flag == 1)   
    % This is for other kinds of post processing; not needed right now.
    x_dot = x;
    
end



