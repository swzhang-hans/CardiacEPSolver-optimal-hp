width=10;
height=1;

Point(1) = {0,0,0,0.1};
Point(2) = {width, 0, 0, 0.1};
Point(3) = {width, height, 0, 0.1};
Point(4) = {0, height, 0, 0.1};

Line(1) = {1, 2};
Line(2) = {2, 3};
Line(3) = {3, 4};
Line(4) = {4, 1};

Transfinite Line{1,3} = 25;
Transfinite Line{2,4} = 3;

Line loop(1) = {1, 2, 3, 4};
Plane Surface(1) = {1};

Transfinite Surface(1);
Recombine Surface(1);

Physical Surface(0) = 1;
Physical Line(1) = {1,2,3,4};

