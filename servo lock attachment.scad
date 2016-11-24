$fn = 200;
difference(){
    cylinder(h=20,r1=6.5,r2=6.5);
    translate([0,0,-1]) cylinder(h=6.6,r1=2.6,r2=2.6);
    translate([-1.25,-3.25,5.5]) cube([2.5,6.5,16.0]);
}
