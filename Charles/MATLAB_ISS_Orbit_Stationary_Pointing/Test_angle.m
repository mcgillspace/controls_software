% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%This code is to convert a set of quaternians into a set of euler angles
%This is to check the pointing accuracy of the quaternians
C = zeros(3,3);
angle = zeros(length(x_out),3);
for i = 1:length(x_out)
    eps = [x_out(i,1); x_out(i,2); x_out(i,3)];         %Get values for epsilon
    eta = x_out(i,4);                                   %Get values for eta
    eps_T = transpose(eps);                             %Calculate epsilon transpose
    eps_x = crossop(eps);                               %Calculate epsilon cross
    C = (2*eta^2-1)*eye(3) + 2*eps*eps_T - 2*eta*eps_x; %Calculate rotation matrix
    if C(2,3)>0
        if C(3,3)>0
            angle(i,1) = 180*atan2(C(2,3),C(3/3))/pi;
        else
            angle(i,1) = 180*atan2(C(2,3),C(3/3))/pi;
        end
    else
        if C(3,3)>0
            angle(i,1) = 180*atan2(C(2,3),C(3/3))/pi;
        else
            angle(i,1) = 180*atan2(C(2,3),C(3/3))/pi;
        end                                             %Calculate and record angle phi, compensating for all four quadrants
    end
    if C(1,3)>0
        if cos(asin(-C(1,3)))>0
            angle(i,2) = 180*asin(-C(1,3))/pi;
        else
            angle(i,2) = 180*asin(-C(1,3))/pi;
        end
    else
        if cos(asin(-C(1,3)))>0
            angle(i,2) = 180*asin(-C(1,3))/pi;
        else
            angle(i,2) = 180*asin(-C(1,3))/pi;        %Calculate and record angle theta, compensating for all four quadrants
        end
    end
    if C(1,2)>0
        if C(1,1)>0
            angle(i,3) = 180*atan2(C(1,2),C(1,1))/pi;
        else
            angle(i,3) = 180*atan2(C(1,2),C(1,1))/pi;
        end
    else
        if C(1,1)>0
            angle(i,3) = 180*atan2(C(1,2),C(1,1))/pi;
        else
            angle(i,3) = 180*atan2(C(1,2),C(1,1))/pi;
        end                                             %Calculate and record angle psi, compensating for all four quadrants
    end
end


%Plot angle vs time
figure
subplot(3,1,1)
plot(t,angle(:,1),'Linewidth',line_width); % angle1 vs time
hold on
xlabel('Time (s)','fontsize',font_size,'Interpreter','latex');
ylabel('$\phi$ (Degrees)','fontsize',font_size,'Interpreter','latex');
set(gca,'XMinorGrid','off','GridLineStyle','-','FontSize',line_size)
grid on

subplot(3,1,2)
plot(t,angle(:,2),'Linewidth',line_width); % angle2 vs time
hold on
xlabel('Time (s)','fontsize',font_size,'Interpreter','latex');
ylabel('$\theta$ (Degrees)','fontsize',font_size,'Interpreter','latex');
set(gca,'XMinorGrid','off','GridLineStyle','-','FontSize',line_size)
grid on

subplot(3,1,3)
plot(t,angle(:,3),'Linewidth',line_width); % angle3 vs time
hold on
xlabel('Time (s)','fontsize',font_size,'Interpreter','latex');
ylabel('$\psi$ (Degrees)','fontsize',font_size,'Interpreter','latex');
set(gca,'XMinorGrid','off','GridLineStyle','-','FontSize',line_size)
grid on
