close
clc
options = optimset('display', 'off');
theta = 0:1:360;
for i = 1:1:361
Position34(:,i) = fsolve(@position1,[1 1],options,theta(i));
theta3 = Position34(1,i);
theta4 = Position34(2,i);

Position56(:,i) = fsolve(@position2,[1 1],options,theta4);
r5 = Position56(1,i);
theta6 = Position56(2,i);

omega2 = 10;
Omega34(:,i) = fsolve(@velocity1,[1 1],options,[theta(i) theta3 theta4 omega2]);
omega3 = Omega34(1,i);
omega4 = Omega34(2,i);

Omega56(:,i) = fsolve(@velocity2,[1 1],options,[theta4 theta6 omega4]);
v5 = Omega56(1,i);
omega6 = Omega56(2,i);

Alpha34(:,i) = fsolve(@acceleration1,[1 1],options,[theta(i) theta3 theta4 omega2 omega3 omega4]);
alpha3 = Alpha34(1,i);
alpha4 = Omega56(1,i);

Alpha56(:,i) = fsolve(@acceleration2,[1 1],options,[theta4 theta6 omega4 omega6 alpha4]);
a5 = Alpha56(1,i);
alpha6 = Alpha56(2,i);
end
%plot(theta(1,:), Position34(1,:));
hold
%plot(theta(1,:), Position34(2,:));
hold
%plot(theta(1,:), Position56(1,:));
hold
%plot(theta(1,:), Position56(2,:));
hold
%plot(theta(1,:), Omega34(1,:));
hold
%plot(theta(1,:), Omega34(2,:));
hold
%plot(theta(1,:), Omega56(1,:));
hold
%plot(theta(1,:), Omega56(2,:));
hold
%plot(theta(1,:), Alpha34(1,:));
hold
%plot(theta(1,:), Alpha34(2,:));
hold
%plot(theta(1,:), Alpha56(1,:));
hold
plot(theta(1,:), Alpha56(2,:));
hold
grid on
