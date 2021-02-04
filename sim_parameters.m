%from
%https://drum.lib.umd.edu/bitstream/handle/1903/16773/Blum_umd_0117E_16195.pdf;sequence=1 
Gdn0=5e-5;
L=10;
dx=0.1;
[x, h] = profile_sim(Gdn0,L,dx);
%% Road Profile Simulation% Input
%   Gdn0, roughness coefficient, m^3
%   L, profile length, m
%   dx, length interval, m
% Output
%   x, profile distance, m
%   h, profile elevation, mm
horizontalVelocity=10; %in mm/s
%plot(x,h)
for i=1:length(x)-1
    slope=(h(i+1)-h(i))/(x(i+1)-x(i));
    velocity(i)=horizontalVelocity*slope;
end
% plot(velocity)