lado = 25;
raio = 2;
//canto = 3;

module furo(){sphere(raio,$fn = 10);}

difference(){
    cube(lado);
    // Face 1
    translate([lado/2,0,lado/2])furo();
    // Face 6
    translate([3*lado/4,lado,3*lado/4])furo();
    translate([3*lado/4,lado,lado/2])furo();
    translate([3*lado/4,lado,lado/4])furo();
    translate([lado/4,lado,3*lado/4])furo();
    translate([lado/4,lado,lado/2])furo();
    translate([lado/4,lado,lado/4])furo();
    // Face 2
    translate([lado,3*lado/4,lado/4])furo();
    translate([lado,lado/4,3*lado/4])furo();
    // Face 5
    translate([0,lado/2,lado/2])furo();
    translate([0,lado/4,lado/4])furo();
    translate([0,3*lado/4,lado/4])furo();
    translate([0,3*lado/4,3*lado/4])furo();
    translate([0,lado/4,3*lado/4])furo();

    // Face 4
    translate([3*lado/4,3*lado/4,0])furo();
    translate([3*lado/4,lado/4,0])furo();
    translate([lado/4,3*lado/4,0])furo();
    translate([lado/4,lado/4,0])furo();
    // Face 3
    translate([lado/2,lado/2,lado])furo();
    translate([3*lado/4,lado/4,lado])furo();
    translate([lado/4,3*lado/4,lado])furo();
}