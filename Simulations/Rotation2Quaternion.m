function [error] = Rotation2Quaternion(E,ne)

if ne == 0
    error1 = ( (E(1,1) + 1) / 2 )^.5;
    error2 = sign(E(1,2)) * ( (E(2,2) + 1) / 2)^.5;
    error3 = sign(E(1,3)) * ( (E(3,3) + 1) / 2)^.5;
else
    error1 = (E(2,3) - E(3,2))/(4*ne);
    error2 = (E(3,1) - E(1,3))/(4*ne);
    error3 = (E(1,2) - E(2,1))/(4*ne);
end

error = [error1; error2; error3];