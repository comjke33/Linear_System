figure;
grid;
for s=0:2:360
    th=s*pi/180;
    E= [360/s 0 0; 0 360/s 0; 0 0 360];
    e= E*x;
    F=[cos(th) sin(th) 0; -sin(th) cos(th) 0; 0 0 1];
    r= F*e;
    r=r+
    clf;
    title('임베디드시스템공학과 202201676 장경은')
    axis([-100 100 -100 100]);
    line(r(1,:),r(2,:));
    pause(0.0000000001);
end

for s=360:-2:1
    th=s*pi/180;
    E= [360/s 0 0; 0 360/s 0; 0 0 360];    
    e= E*x;
    F=[cos(th) sin(th) 0; -sin(th) cos(th) 0; 0 0 1];
    r= F*e;
    clf;
    title('임베디드시스템공학과 202201676 장경은')
    axis([-100 100 -100 100]);
    line(r(1,:),r(2,:));
    pause(0.0000000001);
end
