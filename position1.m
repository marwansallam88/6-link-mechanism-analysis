function position1 = position1(output, input)
r1 = 45;
r2 = 11.26;
r3 = 40.628;
r4 = 17.117;
theta2 = input;
theta3 = output(1);
theta4 = output(2);
x = r1 + r4*cosd(theta4) - r2*cosd(theta2) - r3*cosd(theta3);
y = r4*sind(theta4)- r2*sind(theta2) - r3*sind(theta3);
position1 = [x,y];
end
