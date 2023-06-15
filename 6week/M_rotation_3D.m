% 3D "M" rotation
clear; clc;
x3=[0 1 1 4 7 7 8 8 7 4 1 0 0 0 1 1 4 7 7 8 8 7 4 1 0 0;
0 0 6 0 6 0 0 8 8 2 8 8 0 0 0 6 0 6 0 0 8 8 2 8 8 0;
0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1;
1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1];
figure(3);
clf;grid;

for th = 0: 0.1:60
    the=th*pi/180;
    Rx=[1 0 0 0;0 cos(the) -sin(the) 0;0 sin(the) cos(the) 0;0 0 0 1];
    y3=Rx*x3;
    clf;
    line(y3(1,:),y3(2,:), y3(3,:));
    axis([-10 10 -10 10 -10 10]); grid;
    view([30,30,30]);
    pause(0.0001)
end
for ph = 0: 0.1:70
    phi=ph*pi/180;
    Ry=[cos(phi) 0 sin(phi) 0;0 1 0 0;-sin(phi) 0 cos(phi) 0;0 0 0 1];
    yy3=Ry*y3;
    clf;
    line(yy3(1,:),yy3(2,:), yy3(3,:));
    axis([-10 10 -10 10 -10 10]);grid;
    view([30,30,30]);
    pause(0.0001)
end
for ps = 0: 0.1:80
    psi=ps*pi/180;
    Rz=[cos(psi) -sin(psi) 0 0; sin(psi) cos(psi) 0 0;0 0 1 0;0 0 0 1];
    yyy3=Rz*yy3;
    clf;
    line(yyy3(1,:),yyy3(2,:), yyy3(3,:));
    axis([-10 10 -10 10 -10 10]);grid;
    view([30,30,30]);
    pause(0.0001)
end
