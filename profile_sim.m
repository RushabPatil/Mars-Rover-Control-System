function[x, h] = profile_sim(Gdn0,L,dx)
%% Road Profile Simulation% Input
%   Gdn0, roughness coefficient, m^3
%   L, profile length, m
%   dx, length interval, m
% Output
%   x, profile distance, m
%   h, profile elevation, mm
x = (0:dx:L)';     
% length of profile, m
N = round(length(x)/2);
% number of waves
n_min= 0.011;  
% minimum spatial frequency, cycle/m
n_max = 2.83;   
% maximum spatial frequency, cycle/m
n0 = 0.1;       
% reference spatial frequency, cycle/m
w = 2;          
% exponent of fitted PSD calculated on Gd
n = linspace(n_min,n_max,N)';   
% spatial frequency range, cycle/m
Gd = Gdn0*(n/n0).^-w;
A = sqrt(2*1*Gd);      
% amplitude of harmonic waves
% random phase angles, [0 2pi]
phi_min = 0;    
phi_max = 2*pi;
phi = phi_min + (phi_max-phi_min).*rand(N,1);
% initialize profile
h = zeros(length(x),1); 
hi = zeros(N,1);
for i = 1:length(x)
    for j = 1:N
        hi(j) = +A(j)*cos(2*pi*n(j)*x(i)-phi(j));
    end
    h(i,1) = abs(sum(hi)*1000);  
    % m to mm
end