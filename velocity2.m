function velocity2 = velocity2(output, input)
r4 = 17.117;
r6 = 57.602;
theta4 = input(1);
theta6 = input(2);
omega4 = input(3);
v5 = output(1);
omega6 = output(2);
x = v5 + r4*omega4*sind(theta4) + r6*omega6*sind(theta6);
y = r4*omega4*cosd(theta4) + r6*omega6*cosd(theta6);
velocity2 = [x,y];
end
