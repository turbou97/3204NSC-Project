%Setting up the function for the Constant Driven ODE to be solved and plotted
function [] = pedForce()

%Constants
O=1.2/10; %Omega - Frequencies (this needs to be random distrubution eventually)
C=16; %Pedestrians susceptibility to the bridge (given by paper, measured)
A=0.1; %Amplitude
p=2.216; %Phase
a=1; %Phase lag frequency

%Setting up ODE for pedistrians
    function du = f(t,u)
        du=zeros(50,1);
        du=rand(size(du))+C*A*sin(p-u(:,1)+a);
    end

%Initial conditions and time span
u0=zeros(50,1);
tspan=[0 100];

%ODE Solver
[t,u] = ode45(@f,tspan,u0);

%Plotting Solutions
clf;
plot(u(:,1))
title('Phase?')
xlabel('time (s)')
ylabel('Radians')


end