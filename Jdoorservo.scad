$fn=160;


translate([0,0,0])cylinder(h=30, r=3.15);
translate([0,27,0])cylinder(h=30, r=3.15);
translate([0,0,12.9]) cylinder(h=1, r=5);
translate([0,27,12.9]) cylinder(h=1, r=5);
translate([0,-0.50,0])

 translate([-13.3,11,22])difference(){
    
   
        translate([0,-8,0])cube([25.4,22.1,8]);
        translate([1.2,-3,-1])cube([23,12.61,10]);
    
}


//translate([-12.75,26,20])cube([9.5,3,3]);