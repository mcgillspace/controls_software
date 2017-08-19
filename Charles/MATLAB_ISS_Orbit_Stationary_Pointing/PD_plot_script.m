
% close all

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Font size, line size, and line width. 
font_size = 15;
line_size = 15;
line_width = 2;

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Plots.
% I like to create .eps files. (If you don't know what an .eps file is,
% goodle it.) You can create other kinds of files, such as .png. For more
% information, type ``help print'' in the command window.

% System response

%epsilon vs time

figure
subplot(3,1,1)
plot(t,x_out(:,1),'Linewidth',line_width); % eps1 vs time
hold on
xlabel('Time (s)','fontsize',font_size,'Interpreter','latex');
ylabel('$\epsilon_1$','fontsize',font_size,'Interpreter','latex');
set(gca,'XMinorGrid','off','GridLineStyle','-','FontSize',line_size)
grid on

subplot(3,1,2)
plot(t,x_out(:,2),'Linewidth',line_width); %eps2 vs time
hold on
xlabel('Time (s)','fontsize',font_size,'Interpreter','latex');
ylabel('$\epsilon_2$','fontsize',font_size,'Interpreter','latex');
set(gca,'XMinorGrid','off','GridLineStyle','-','FontSize',line_size)
grid on

subplot(3,1,3)
plot(t,x_out(:,3),'Linewidth',line_width); %eps3 vs time
hold on
xlabel('Time (s)','fontsize',font_size,'Interpreter','latex');
ylabel('$\epsilon_3$','fontsize',font_size,'Interpreter','latex');
set(gca,'XMinorGrid','off','GridLineStyle','-','FontSize',line_size)
grid on

%epsilon vs log10(time)

figure
subplot(3,1,1)
plot(log10(t),x_out(:,1),'Linewidth',line_width); % eps1 vs log(time)
hold on
xlabel('log10(time) (s)','fontsize',font_size,'Interpreter','latex');
ylabel('$\epsilon_1$','fontsize',font_size,'Interpreter','latex');
set(gca,'XMinorGrid','off','GridLineStyle','-','FontSize',line_size)
grid on

subplot(3,1,2)
plot(log10(t),x_out(:,2),'Linewidth',line_width); %eps2 vs log(time)
hold on
xlabel('log10(time) (s)','fontsize',font_size,'Interpreter','latex');
ylabel('$\epsilon_2$','fontsize',font_size,'Interpreter','latex');
set(gca,'XMinorGrid','off','GridLineStyle','-','FontSize',line_size)
grid on

subplot(3,1,3)
plot(log10(t),x_out(:,3),'Linewidth',line_width); %eps3 vs log(time)
hold on
xlabel('log10(time) (s)','fontsize',font_size,'Interpreter','latex');
ylabel('$\epsilon_3$','fontsize',font_size,'Interpreter','latex');
set(gca,'XMinorGrid','off','GridLineStyle','-','FontSize',line_size)
grid on

%omega vs time

figure
subplot(3,1,1)
plot(t,x_out(:,5),'Linewidth',line_width); %omega1 vs time
hold on
xlabel('Time (s)','fontsize',font_size,'Interpreter','latex');
ylabel('$\omega_1$ (rad/s)','fontsize',font_size,'Interpreter','latex');
set(gca,'XMinorGrid','off','GridLineStyle','-','FontSize',line_size)
grid on

subplot(3,1,2)
plot(t,x_out(:,6),'Linewidth',line_width); %omega2 vs time
hold on
xlabel('Time (s)','fontsize',font_size,'Interpreter','latex');
ylabel('$\omega_2$ (rad/s)','fontsize',font_size,'Interpreter','latex');
set(gca,'XMinorGrid','off','GridLineStyle','-','FontSize',line_size)
grid on

subplot(3,1,3)
plot(t,x_out(:,7),'Linewidth',line_width); %omega3 vs time
hold on
xlabel('Time (s)','fontsize',font_size,'Interpreter','latex');
ylabel('$\omega_3$ (rad/s)','fontsize',font_size,'Interpreter','latex');
set(gca,'XMinorGrid','off','GridLineStyle','-','FontSize',line_size)
grid on

%magnetic moment vs. time

figure
subplot(3,1,1)
plot(t,mag_moment(1,:),'Linewidth',line_width); 
hold on
xlabel('Time (s)','fontsize',font_size,'Interpreter','latex');
ylabel('$m_x$ $(Am^2)$','fontsize',font_size,'Interpreter','latex');
set(gca,'XMinorGrid','off','GridLineStyle','-','FontSize',line_size)
grid on

subplot(3,1,2)
plot(t,mag_moment(2,:),'Linewidth',line_width); %eps2 vs time
hold on
xlabel('Time (s)','fontsize',font_size,'Interpreter','latex');
ylabel('$m_y$ $(Am^2)$','fontsize',font_size,'Interpreter','latex');
set(gca,'XMinorGrid','off','GridLineStyle','-','FontSize',line_size)
grid on

subplot(3,1,3)
plot(t,mag_moment(3,:),'Linewidth',line_width); %eps3 vs time
hold on
xlabel('Time (s)','fontsize',font_size,'Interpreter','latex');
ylabel('$m_z$ $(Am^2)$','fontsize',font_size,'Interpreter','latex');
set(gca,'XMinorGrid','off','GridLineStyle','-','FontSize',line_size)
grid on

%torque vs. time

figure
subplot(3,1,1)
plot(t,torque_t(1,:),'Linewidth',line_width); 
hold on
xlabel('Time (s)','fontsize',font_size,'Interpreter','latex');
ylabel('$Torque_x$','fontsize',font_size,'Interpreter','latex');
set(gca,'XMinorGrid','off','GridLineStyle','-','FontSize',line_size)
grid on

subplot(3,1,2)
plot(t,torque_t(2,:),'Linewidth',line_width); %eps2 vs time
hold on
xlabel('Time (s)','fontsize',font_size,'Interpreter','latex');
ylabel('$Torque_y$','fontsize',font_size,'Interpreter','latex');
set(gca,'XMinorGrid','off','GridLineStyle','-','FontSize',line_size)
grid on

subplot(3,1,3)
plot(t,torque_t(3,:),'Linewidth',line_width); %eps3 vs time
hold on
xlabel('Time (s)','fontsize',font_size,'Interpreter','latex');
ylabel('$Torque_z$','fontsize',font_size,'Interpreter','latex');
set(gca,'XMinorGrid','off','GridLineStyle','-','FontSize',line_size)
grid on

%{

% print -depsc -r720 plots/duffing_sys_resp
exportfig(gcf,'plots/duffing_sys_resp.eps','width',11,'Height',8.5,'fontmode','fixed','fontsize',20,'Color','cmyk','LineWidth',line_width);


% Phase-space plot
figure
plot(x_out(:,1),x_out(:,2),'Linewidth',line_width);
hold on
xlabel('$x_2$ (m)','fontsize',font_size,'Interpreter','latex');
ylabel('$x_2$ (m/s)','fontsize',font_size,'Interpreter','latex');
set(gca,'XMinorGrid','off','GridLineStyle','-','FontSize',line_size)
grid on


% print -depsc -r720 plots/duffing_energy
exportfig(gcf,'plots/duffing_energy.eps','width',11,'Height',8.5,'fontmode','fixed','fontsize',20,'Color','cmyk','LineWidth',line_width);

% Energy, which should be constant when damping is zero and the forcing function is zero. 
figure
plot(t,E,'Linewidth',line_width);
hold on
xlabel('Time (s)','fontsize',font_size,'Interpreter','latex');
ylabel('$E$ (J)','fontsize',font_size,'Interpreter','latex');
set(gca,'XMinorGrid','off','GridLineStyle','-','FontSize',line_size)
grid on

% print -depsc -r720 plots/duffing_energy
exportfig(gcf,'plots/duffing_energy.eps','width',11,'Height',8.5,'fontmode','fixed','fontsize',20,'Color','cmyk','LineWidth',line_width);

%}