
% Font size, line size, and line width. 
font_size = 15;
line_size = 15;
line_width = 2;

%column matrix f will contain the error of the function at each timestep
f = zeros(t_div,1);

for h = 1:t_div
    %function: sum of squares of epsilon and eta components minus 1 
f(h) = (x_out(h,1)^2 + x_out(h,2)^2 + x_out(h,3)^2 + x_out(h,4)^2) - 1;
h = h + 1;
end

figure
plot(t,f,'Linewidth',line_width); %get f vs time
hold on
xlabel('Time (s)','fontsize',font_size,'Interpreter','latex');
ylabel('Function error','fontsize',font_size,'Interpreter','latex');
set(gca,'XMinorGrid','off','GridLineStyle','-','FontSize',line_size)
grid on