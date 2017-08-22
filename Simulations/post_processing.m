% Post processing script.
% James Richard Forbes

% Here is where you do post processing. 
% For instance, when the forcing function is zero, and the damping is zero,
% energy should be conserved. So, let's compute the energy, E = T + V.

% for lv1 = 1:length(x_out)
    % Note, I like to use ``lv1'' for my loop counter, which stands for
    % ``loop-varibale 1'' because the letters i and j are reserved as
    % imaginary numbers.
    
%     E(lv1) = 1/2*m*x_out(lv1,2)^2 + 1/2*k1*x_out(lv1,1)^2 + 1/2*1/2*k2*x_out(lv1,1)^4;
    
% end
f = zeros(length(x_out),1);
T = zeros(length(x_out),1);
dT = zeros(length(x_out),1);

for i=1:length(x_out)
    e = [x_out(i,1), x_out(i,2), x_out(i,3)];
    n = x_out(i,4);
    w = [x_out(i,5), x_out(i,6), x_out(i,7)];
    I = [8.96e-3 0 0; 0 8.65e-3 0; 0 0 1.78e-2];
    
    f(i,1) = e*e.' + n^2 - 1;
    T(i,1) = 1/2*w*I*w.';
    dT(i,1) = T(i,1)-T(1,1);
end

font_size = 15;
line_size = 15;
line_width = 2;

figure

subplot(3,1,1)
plot(t,f,'Linewidth',line_width);
hold on
xlabel('Time (s)','fontsize',font_size,'Interpreter','latex');
ylabel('$f(e,n)$','fontsize',font_size,'Interpreter','latex');
set(gca,'XMinorGrid','off','GridLineStyle','-','FontSize',line_size)
grid on

subplot(3,1,2)
plot(t,T,'Linewidth',line_width);
hold on
xlabel('Time (s)','fontsize',font_size,'Interpreter','latex');
ylabel('$T$ (J)','fontsize',font_size,'Interpreter','latex');
set(gca,'XMinorGrid','off','GridLineStyle','-','FontSize',line_size)
grid on

subplot(3,1,3)
plot(t,dT,'Linewidth',line_width);
hold on
xlabel('Time (s)','fontsize',font_size,'Interpreter','latex');
ylabel('$dT$ (-)','fontsize',font_size,'Interpreter','latex');
set(gca,'XMinorGrid','off','GridLineStyle','-','FontSize',line_size)
grid on

