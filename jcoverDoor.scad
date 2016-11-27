

$fn=300;

translate([0,0,0])difference(){
  cylinder(37,23,32);
  translate([0,0,4.5])cylinder(35,21,27.5);  
}

translate([0,0,0])difference(){
    translate([0,0,28.2])
    difference(){
                translate([0,0,5.9])
                cylinder(h=3, r=38);
                cylinder(9,28,28);
}
//holes
translate([34,0,34])cylinder(r=1.5,h=4);
translate([-34,0,34])cylinder(r=1.5,h=4);
translate([0,34,34])cylinder(r=1.5,h=4);
translate([0,-34,34])cylinder(r=1.5,h=4);
}
//translate([0,0,0])cube([27.7,1,5]);