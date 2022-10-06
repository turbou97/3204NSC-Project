function [Fx] = random_forces()

%n = number of pedestrians
%Fmax = maximum force that a pedestrian can exert

%F = vector of n forces
n=100;
Fmax=1;
%generate random numbers between 0 and 1
r = rand(n,1);

%generate random angles between 0 and 2pi
theta = 2*pi*rand(n,1);

%generate random forces between 0 and Fmax
F = Fmax*r;

%generate x component of force
Fx = F.*cos(theta);
end