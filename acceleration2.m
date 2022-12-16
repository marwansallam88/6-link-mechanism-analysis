function acceleration2 = acceleration2(output, input)
r4 = 17.117;
r6 = 57.602;
theta4 = input(1);
theta6 = input(2);
omega4 = input(3);
omega6 = input(4);
alpha4 = input(5);
a5 = output(1);
alpha6 = output(2);
x = a5 + r4*(omega4^2)*cosd(theta4) + r4*alpha4*sind(theta4) + r6*(omega6^2)*cosd(theta6) + r6*alpha6*sind(theta6);
y = -r4*(omega4^2)*sind(theta4) + r4*alpha4*cosd(theta4) - r6*(omega6^2)*sind(theta6) + r6*alpha6*cosd(theta6);
acceleration2 = [x,y];
end
