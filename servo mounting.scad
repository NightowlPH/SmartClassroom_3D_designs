include <Libs.scad>
$fn = 200;


difference(){
    union(){
        //base shape is a union between the thin round circular plate that is screwed onto the door and a rounded off box on which the servo will mount.
        intersection(){
            //make the rounded off box.
            translate([-30,-16,-0.1]) cube([60,32,27.6]);
            cylinder(h=27.4,r1=30,r2=30); 
        }
        cylinder(h=5,r1=35,r2=35); //circular door plate
    }
    
    //rectangle cutout of mounting box
    translate([-20,-8,-0.2]) cube([40.0, 16.0, 28]);
    translate([-20,-10,19.6]) cube([40.0, 20.0, 8.0]);
    
    //bolt holes for 2 bolts from outside part of the lock
    translate([10.0,-11.0,-0.2]) cylinder(h=5.4,r1=2.5,r2=2.5);
    translate([10.0,11.0,-0.2]) cylinder(h=5.4,r1=2.5,r2=2.5);
    translate([10.0,-11.0, 5]) cylinder(h=23.9,r1=4,r2=4);
    translate([10.0,11.0, 5]) cylinder(h=23.9,r1=4,r2=4);
       
    //bolt holes for servo attachment top
    translate([24.6,-4.7,20.6]) cylinder(h=7.2,r1=1.8,r2=1.8);
    translate([24.6,4.7,20.6]) cylinder(h=7.2,r1=1.8,r2=1.8);
    //nut hole for servo attachment top
    translate([24.6, -4.7, -0.2]) hex(width=6, height=21, flats=true, center=false);
    translate([24.6, 4.7, -0.2]) hex(width=6, height=21, flats=true, center=false);    
    
    //bolt holes for servo attachment bottom
    translate([-24.6,-4.7,20.6]) cylinder(h=7.2,r1=1.8,r2=1.8);
    translate([-24.6,4.7,20.6]) cylinder(h=7.2,r1=1.8,r2=1.8);
    //nut hole for servo attachment bottom
    translate([-24.6, -4.7, -0.2]) hex(width=6, height=21, flats=true, center=false);
    translate([-24.6, 4.7, -0.2]) hex(width=6, height=21, flats=true, center=false);
    
    //holes for the plate mounting screws to the door
    translate([20,-20,2.5]) cylinder(h=5.2,r1=1.5,r2=1.5, center=true);
    translate([-20,-20,2.5]) cylinder(h=5.2,r1=1.5,r2=1.5, center=true);
    translate([20,20,2.5]) cylinder(h=5.2,r1=1.5,r2=1.5, center=true);
    translate([-20,20,2.5]) cylinder(h=5.2,r1=1.5,r2=1.5, center=true);
    
    
    
    
    //machine screw (bolt) size #2, nut #2. Bolt diam 2.03mm
    //nut size 4.8mm. Screw/bolt length:?
}