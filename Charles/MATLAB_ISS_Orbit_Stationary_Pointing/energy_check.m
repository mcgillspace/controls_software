
% Font size, line size, and line width. 
font_size = 15;
line_size = 15;
line_width = 2;

%column matrix T will contain the energy value at each timestep
T = zeros(t_div,1);
deltaT = zeros(t_div,1);

for h = 1:t_div
    %function for energy calculated at a timestep 
T(h) = (0.5)*x_out(h,5:7)*inertia*transpose(x_out(h,5:7));
deltaT(h) = T(h) - T(1);
end


figure
subplot(2,1,1)
plot(t,T,'Linewidth',line_width); %get T vs time
hold on
xlabel('Time (s)','fontsize',font_size,'Interpreter','latex');
ylabel('Energy (J)','fontsize',font_size,'Interpreter','latex');
set(gca,'XMinorGrid','off','GridLineStyle','-','FontSize',line_size)
grid on

subplot(2,1,2)
plot(t,deltaT,'Linewidth',line_width); %get change in T vs time
hold on
xlabel('Time (s)','fontsize',font_size,'Interpreter','latex');
ylabel('$\Delta Energy$ (J)','fontsize',font_size,'Interpreter','latex');
set(gca,'XMinorGrid','off','GridLineStyle','-','FontSize',line_size)
grid on