%--------------------------------------------------------------------------
%
% AE347 Homework #9
% Animate Earth and Satellite
% This version is black and white
% 
%--------------------------------------------------------------------------

% Clear some things
clear h;

% Extract states at specific times

%steps:
%run sim_data_v1 in plot_world_animated file first
%run main_compile_file with 'clear all' (line 2) commented out
%run this file

omega   = x_out(:,5:7);
epsilon = x_out(:,1:3);
eta     = x_out(:,4);

time = t;

constants;
   
% Get a time with constant step in seconds
time_tc = 0:10:time(end);

r = [altitude*cos((2*pi/orbit_period)*time_tc.'), altitude*sin((2*pi/orbit_period)*time_tc.')*cos(incl), altitude*sin((2*pi/orbit_period)*time_tc.')*sin(incl)];
r = r.';
% Initilize new epislon and eta
epsilon_tc = zeros(length(time_tc),3);
eta_tc = interp1(time,eta,time_tc).';

% Get epsilon in constant time steps
for ii = 1:3
    epsilon_tc(:,ii) = interp1(time,epsilon(:,ii),time_tc).';
end

% Get position of the satellite in ECI in constant time steps
r_g = zeros(length(time_tc),3).';
for ii = 1:length(time_tc)
    [r_g(:,ii)] = [r(:,ii)]; %FindRandV(a,e,inc,Omega,p,t0,time_tc(ii));
    %[~,~,~,~,r_g(:,ii),~] = orbital_dynamics(time_tc(ii),a,e,p,t0,Cip);
end
r_g = r_g.'/1000;


% Plot the Earth and the orbit
figure;
set(gcf,'Position',[245 22 1108 784])
earth_sphere(gca,'km');

font_size = 15;
line_size = 1.5;
% Radius of the Earth
Re = 6371.200;
% Create map of the Earth.
hold on

grid on
% Create map of the Earth.
[F_i1, F_i2, F_i3] = sphere(36);
colormap(white)
surf(F_i1*Re, F_i2*Re, F_i3*Re)
load coast.mat
[x_coast, y_coast, z_coast] = sph2cart(long*(pi/180), lat*(pi/180), Re);
plot3(x_coast, y_coast, z_coast, 'k')
axis('equal')
title('Spacecraft Orbit','fontsize',font_size);
xlabel('g_1 (km)','fontsize',font_size);
ylabel('g_2 (km)','fontsize',font_size);
zlabel('g_3 (km)','fontsize',font_size);
view([1 1 1])
set(gca,'XMinorGrid','off','GridLineStyle','-','FontSize',line_size)
% grid on

% hold on;
h1h = plot3(r_g(:,1),r_g(:,2),r_g(:,3),'r','LineWidth',2); 
% grid on;
set(gca,'FontSize',15,'View',[52.5 20]);

% break

% Get the satellite
L = 2*200;
W = 3*200;
H = 4*200;
x_rect = [0 0 0 0 0; -1 -1 1 1 -1; -1 -1 1 1 -1; 0 0 0 0 0]*W/2;
y_rect = [0 0 0 0 0; -1 1  1 -1 -1;  -1 1 1 -1 -1; 0 0 0 0 0]*L/2;
z_rect = [-1 -1 -1 -1 -1;-1 -1 -1 -1 -1; 1 1 1 1 1; 1 1 1 1 1]*H/2;
rect = [x_rect(:).' ; y_rect(:).' ; z_rect(:).'];

% rot_rect = rot(5*pi/180,3).'*rect;
rot_rect = C3(5*pi/180).'*rect;

x_rot = reshape(rot_rect(1,:),4,5);
y_rot = reshape(rot_rect(2,:),4,5);
z_rot = reshape(rot_rect(3,:),4,5);

% Plot the initial box
h = surf(x_rot+r_g(1,1),y_rot+r_g(1,2),z_rot+r_g(1,3),'facecolor','b');
% axis([-6 6 -6 6 -6 6])
axis equal
xlabel('$g^1$','fontsize',15,'interpreter','latex')
ylabel('$g^2$','fontsize',15,'interpreter','latex')
zlabel('$g^3$','fontsize',15,'interpreter','latex')

set(gca,'View',[63.5000 10]);
axis([-6.3781e+03 6.3781e+03 -6.3712e+03 6.3712e+03 -7.7292e+03 7.3374e+03]*1.1);
% Animate the Satellite
for ii = 1:length(time_tc)
    delete(h);
    
    C_bg = (eta_tc(ii)^2 - epsilon_tc(ii,:)*epsilon_tc(ii,:).')*eye(3)+...
    2*epsilon_tc(ii,:).'*epsilon_tc(ii,:)-2*eta_tc(ii)*crossop(epsilon_tc(ii,:));
    rot_rect = C_bg.'*rect;

    x_rot = reshape(rot_rect(1,:),4,5);
    y_rot = reshape(rot_rect(2,:),4,5);
    z_rot = reshape(rot_rect(3,:),4,5);
    h = surf(x_rot+r_g(ii,1),y_rot+r_g(ii,2),z_rot+r_g(ii,3),'facecolor','b');

    pause(0.01);
end