function position2 = position2(output, input)
r4 = 17.117;
r6 = 57.602;
theta4 = input(1);
r5 = output(1);
theta6 = output(2);
x = r4*cosd(theta4) + r6*cosd(theta6) - r5;
y = r4*sind(theta4) + r6*sind(theta6);
position2 = [x,y];
end