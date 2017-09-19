% Post processing script.
% James Richard Forbes

% Here is where you do post processing. 
% For instance, when the forcing function is zero, and the damping is zero,
% energy should be conserved. So, let's compute the energy, E = T + V.


for lv1 = 1:length(x_out)
    % Note, I like to use ``lv1'' for my loop counter, which stands for
    % ``loop-varibale 1'' because the letters i and j are reserved as
    % imaginary numbers.
    
    E(lv1) = 1/2*m*x_out(lv1,2)^2 + 1/2*k1*x_out(lv1,1)^2 + 1/2*1/2*k2*x_out(lv1,1)^4;
    
end

