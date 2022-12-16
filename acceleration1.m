function acceleration1 = acceleration1(output, input)
r1 = 45;
r2 = 11.26;
r3 = 40.628;
r4 = 17.117;
theta2 = input(1);
theta3 = input(2);
theta4 = input(3);
omega2 = input(4);
omega3 = input(5);
omega4 = input(6);
alpha3 = output(1);
alpha4 = output(2);
x = -r2*(omega2^2)*cosd(theta2) - r3*(omega3^2)*cosd(theta3) - r3*alpha3*sind(theta3) + r4*(omega4^2)*cosd(theta4) + r4*alpha4*sind(theta4);
y = -r2*(omega2^2)*sind(theta2) - r3*(omega3^2)*sind(theta3) + r3*alpha3*cosd(theta3) + r4*(omega4^2)*sind(theta4) - r4*alpha4*cosd(theta4);
acceleration1 = [x,y];
end
