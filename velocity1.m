function velocity1 = velocity1(output, input)
r1 = 45;
r2 = 11.26;
r3 = 40.628;
r4 = 17.117;
theta2 = input(1);
theta3 = input(2);
theta4 = input(3);
omega2 = input(4);
omega3 = output(1);
omega4 = output(2);
x = r4*omega4*sind(theta4) - r2*omega2*sind(theta2) - r3*omega3*sind(theta3);
y = -r4*omega4*cosd(theta4) + r2*omega2*cosd(theta2) + r3*omega3*cosd(theta3);
velocity1 = [x,y];
end
