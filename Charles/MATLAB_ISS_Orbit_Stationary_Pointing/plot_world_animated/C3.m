function C3_matrix = C3(th)
% This is a ``3'' axis rotation matrix.

C3_matrix = [  cos(th)  sin(th) 0;
              -sin(th)  cos(th) 0;
                   0       0     1 ];