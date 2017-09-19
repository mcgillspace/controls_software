
%define orbital dynamics of satellite (no y component for polar orbit)

r = [altitude*cos((2*pi/orbit_period)*t), 0*t, altitude*sin((2*pi/orbit_period)*t)];


%torque_d = (-c*x_out(:,5:7) - k*x_out(:,1:3) - int*x_out(:,8:10)).';
torque_d = (-c*x_out(:,5:7) - k*x_out(:,1:3)).';

%find flux density of Earth at each timestep and plug into matrix b
for h = 1:t_div
%field density in earth's frame
b_eci(:,h) = EarthMagField(r(h,:).', t(h));

%rotation matrix to describe b in body frame
rotation_mat = (2*x_out(h,4)^2 - 1)*eye(3) + 2*x_out(h,1:3).'*(x_out(h,1:3)) - 2*x_out(h,4)*crossop(x_out(h,1:3));

%field density in body's frame
b_body(:,h) = rotation_mat * b_eci(:,h);

torque_t(:,h) = torque_d(:,h) - (dot(torque_d(:,h),b_body(:,h))*b_body(:,h))/norm(b_body(:,h))^2;

%magnetic dipole moments caused by the magnetorquers
mag_moment(:,h) = crossop(b_body(:,h))*torque_t(:,h)/(norm(b_body(:,h)))^2;

end

max_mag_moment = [max(abs(mag_moment(1,:))); max(abs(mag_moment(2,:))); max(abs(mag_moment(3,:)))]
max_torque_t = [max(abs(torque_t(1,:))); max(abs(torque_t(2,:))); max(abs(torque_t(3,:)))]







