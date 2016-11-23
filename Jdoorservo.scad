$fn=160;

difference(){
  cylinder(37,23,29);
  translate([0,0,3])cylinder(35,21,27.5);  


    
    
}

translate([-6,9.25,0])cylinder(h=69, r=2.5);
translate([-6,-11.29,0])cylinder(h=69, r=2.5);
translate([0,-0.50,0])difference(){
    
    translate([-17,-8,0])cube([35,15,33]);
    
    translate([-16,-7,4])cube([33,13,30]);
    
}

difference(){


translate([0,0,28.2])difference(){
translate([0,0,5.9])
cylinder(h=3, r=35);
cylinder(9,28,28);
}

//holes
translate([31,0,34])cylinder(r=1.5,h=4);
translate([-31,0,34])cylinder(r=1.5,h=4);
translate([0,31,34])cylinder(r=1.5,h=4);
translate([0,-31,34])cylinder(r=1.5,h=4);
}