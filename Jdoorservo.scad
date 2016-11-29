$fn=160;


    translate([0,0,0])cylinder(h=30, r=3.15);
    translate([0,27,0])cylinder(h=30, r=3.15);
    translate([0,0,11.5]) difference(){
            cylinder(h=6, r1=5,r=1);
            translate([-5,-8,-1]) cube([10,5,9]);
            translate([-5,3,-1]) cube([10,5,9]);
    }
    translate([0,27,11.5]) difference(){
            cylinder(h=6, r1=5,r=1);
            translate([-5,3,-1]) cube([10,5,9]);
            translate([-5,-8,-1]) cube([10,5,9]);
    }
    translate([0,-0.50,0])

     translate([-16.3,11,22])difference(){
        
       
            translate([0,-8,0])cube([25.4,22.1,8]);
            translate([1.2,-3,-1])cube([23,12.61,10]);
        
    }


//translate([-12.75,26,20])cube([9.5,3,3]);