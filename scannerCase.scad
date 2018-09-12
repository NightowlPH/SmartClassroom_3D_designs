module roundedRect(size, radius)
{
    x = size[0];
    y = size[1];
    z = size[2];

    linear_extrude(height=z)
    hull()
    {
        // place 4 circles in the corners, with the given radius
        translate([(-x/2)+(radius/2), (-y/2)+(radius/2), 0])
        circle(r=radius, $fn=99);

        translate([(x/2)-(radius/2), (-y/2)+(radius/2), 0])
        circle(r=radius, $fn=99);

        translate([(-x/2)+(radius/2), (y/2)-(radius/2), 0])
        circle(r=radius, $fn=99);

        translate([(x/2)-(radius/2), (y/2)-(radius/2), 0])
        circle(r=radius, $fn=99);
    }

}

union(){
    translate([0,0,0]) difference(){
        
        color("lightgrey") difference()
        {
            //main box
            //translate([0,0,9]) cube([44,87,18], center=true);
            roundedRect([39,82,18], 5);
            //translate([0,0,12]) cube([40,83,21], center=true);
            translate([0,0,2.1]) roundedRect([35,78,21], 5);
        }
        
        //hole in base
       translate([-9,-35,-1])cube([18,70,6]);
           
        //screw holes door
        translate([15.5,12,-1]) cylinder(h=10, r=1.5, $fn=99);
        translate([-15.5,12,-1]) cylinder(h=10, r=1.5, $fn=99);
        translate([15.5,-12,-1])cylinder(h=10, r=1.5, $fn=99);
        translate([-15.5,-12,-1])cylinder(h=10, r=1.5, $fn=99);
     
    }
    
    color("ForestGreen") translate([0,3.5,2]) difference() {
        //outer ledges
        translate([0,0,8]) cube([43,64,15.9], center=true);
        translate([0,0,10]) cube([41,60,20], center=true);
        translate([0,0,10]) cube([25,70,20], center=true);
        translate([0,0,10]) cube([50,44,20], center=true);
    }

    color("PaleTurquoise") translate([0,3.5,2]) difference(){
        //inner ledges
        translate([0,0,5.5]) cube([40,60,11], center=true);
        translate([0,0,6]) cube([20,70,15], center=true);
        translate([0,0,6]) cube([62,40,15], center=true);
    }

    translate([0,0,0.1]) color("PaleTurquoise") union(){  
        //SCREWS for top CASE
        translate([0,3.5,0]) difference(){
            translate([18,-35,0]) cylinder(h=18, r=3, $fn=99);
            translate([18,-35,0]) cylinder(h=40, r=1, $fn=99);
        }   
        translate([0,3.5,0]) difference(){    
            translate([-18,-35,0])cylinder(h=18, r=3, $fn=99);
            translate([-18,-35,0])cylinder(h=40, r=1, $fn=99);
        }
            
        //SCREWS for top CASE
        translate([0,3.5,0]) difference(){
            translate([18,35,0])cylinder(h=18, r=3, $fn=99);
            translate([18,35,0])cylinder(h=40, r=1, $fn=99);
        }
        
        translate([0,3.5,0]) difference(){
            translate([-18,35,0])cylinder(h=18, r=3, $fn=99);
            translate([-18,35,0])cylinder(h=40, r=1, $fn=99);
        }
    }
}


translate([50,0,0]) difference(){
    translate([0,0,0]) union(){
        color("lightgrey") difference()
        {
            //main lid
            //translate([0,0,1]) cube([44,87,2], center=true);
            roundedRect([39,82,2], 5);
        }

    //*****************************logo*****************************//
        color("darkgrey") rotate([0,0,0]) translate([10,25,2]) {
            linear_extrude(height=0.4) scale([0.06,0.06,0]) import("nightowl-logo-face only.dxf",convexity=60);
            translate([-28,-20,0]) scale([0.6,0.6,1]) linear_extrude(height=0.4) text("Night Owl",font="Hobo std",$fn=60);
            translate([-38,-55,0]) linear_extrude(height=0.4) scale([0.26,0.26,0]) import("rfid scan id.dxf",convexity=60);

        }
    }
    translate([18,38.5,-1])cylinder(h=40, r=1.5, $fn=99);
    translate([-18,38.5,-1])cylinder(h=40, r=1.5, $fn=99);
    translate([18,-31.5,-1])cylinder(h=40, r=1.5, $fn=99);
    translate([-18,-31.5,-1])cylinder(h=40, r=1.5, $fn=99);
}