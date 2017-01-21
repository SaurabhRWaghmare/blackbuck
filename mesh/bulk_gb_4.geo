grid = 0.5;

Point(1) = {30, 0, 0, grid};
Point(2) = {-30, 0, 0, grid};
Point(3) = {0, 30, 0, grid};
Point(4) = {0, -30, 0, grid};
Point(5) = {0, -30, 0, grid};
Point(6) = {0, -30, 0, grid};
Point(7) = {0, 0, 0, grid};
Circle(1) = {1, 7, 4};
Circle(2) = {4, 7, 2};
Circle(3) = {2, 7, 3};
Circle(4) = {3, 7, 1};
Line Loop(5) = {4, 1, 2, 3};
Ruled Surface(6) = {5};
Point(8) = {31, 0, 0, grid};
Point(9) = {-31, 0, 0, grid};
Point(10) = {0, 31, 0, grid};
Point(11) = {0, -31, 0, grid};

Circle(7) = {8, 7, 10};
Circle(8) = {10, 7, 9};
Circle(9) = {9, 7, 11};
Circle(10) = {11, 7, 8};
Coherence;

Line(11) = {8, 1};
Line(12) = {11, 4};
Line(13) = {9, 2};
Line(14) = {10, 3};
Line Loop(15) = {10, 11, 1, -12};
Ruled Surface(16) = {15};
