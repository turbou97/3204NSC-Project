%Setting up the function for the Homogeneous ODE to be solved and plotted
function [] = bridgeOdeh()

%Constants
B=1.1; %Dampening factor [Ns/m]
M=10; %Mass of the bridge [kg]
K=2; %Spring constant (stiffness) [N/m]

%Setting up the Homogeneous ODE
    function du = f(t,u)
        du=zeros(2,1);
        du(1)=u(2);
        du(2)=-(B/M)*u(2)-(K/M)*u(1);
    end

%Initial conditions and time span
u0=[1,0];
tspan=[0 100];

%ODE Solver
[t,u] = ode45(@f,tspan,u0);

%Plotting Solutions
subplot(121);plot(t,u(:,1))
title('Distance x from origin at time t')
xlabel('time (s)')
ylabel('Distance [m]')
legend('m')
subplot(122);plot(t,u(:,2))
title('Centering/Returning velocity at time t')
xlabel('time (s)')
ylabel('Velocity [m/s]')
legend('m/s')

end