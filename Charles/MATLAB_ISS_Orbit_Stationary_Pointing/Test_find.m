c_a = 10e-12
c_b = 10e-7 
c_abound = c_a;
c_bbound = c_b;
deltc_c=5;
d=0;
while and(c_b-c_a>10e-15, d==0)
c_c = (c_b+c_a)/2

c=c_c-c_c/100;
tic
output_flag = 0;
[t,x_out] = ode45(@Test_ODEs,t_span,IC,options,output_flag,dummy_matix,t_span,c);
time_stamp = toc;
tc_minus = time_stamp
 
c=c_c+c_c/100;
tic
output_flag = 0;
[t,x_out] = ode45(@Test_ODEs,t_span,IC,options,output_flag,dummy_matix,t_span,c);
time_stamp = toc;
tc_plus = time_stamp

deltc_c = tc_plus-tc_minus;

if deltc_c < 0
    c_a = c_c;
elseif deltc_c > 0
    c_b = c_c;
else
    d = 1;
end
if c>c_bbound
    d = 1;
elseif c-c_c/50<c_abound
    d = 1;
end
end