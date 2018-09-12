module screwsupport(){
    difference() {
        union(){
            cylinder(h=18,r=3,$fn=99);
            difference(){
                cylinder(h=2,r=4,$fn=99);
                rotate([0,0,-45]) translate([-5,-9,-1]) cube([8,8,6]);
            }
        }
        translate([0,0,-1]) cylinder(h=21,r=2,$fn=99);
    }
}
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

module top(){
    union(){
        difference(){
            union(){
                translate([25,16.5,0]) difference(){
                    //main box
                    roundedRect([43,27,9], 5);
                    translate([0,0,2]) roundedRect([41,25,23], 4);
                }
                //inner screw support
                translate([5,5,2]) cylinder(h=2,r=3.8,$fn=99);
                translate([45,5,2]) cylinder(h=2,r=3.8,$fn=99);
                translate([45,28,2]) cylinder(h=2,r=3.8,$fn=99);
                translate([5,28,2]) cylinder(h=2,r=3.8,$fn=99);
            }
            translate([5,5,4.1]) cylinder(h=18,r=3.4,$fn=99);
            translate([45,5,4.1]) cylinder(h=18,r=3.4,$fn=99);
            translate([45,28,4.1]) cylinder(h=18,r=3.4,$fn=99);
            translate([5,28,4.1]) cylinder(h=18,r=3.4,$fn=99);
            //LED hole
            translate([30,34,9]) rotate([90,0,0]) cylinder(h=5,r=3,$fn=99);
            
            translate([5,5,-2]) cylinder(h=8,r=2,$fn=99);
            translate([45,5,-2]) cylinder(h=8,r=2,$fn=99);
            translate([45,28,-2]) cylinder(h=8,r=2,$fn=99);
            translate([5,28,-2]) cylinder(h=8,r=2,$fn=99);
            
            //countersunk screw holes
            translate([5,5,-1]) cylinder(h=3,r=3,$fn=99);
            translate([45,5,-1]) cylinder(h=3,r=3,$fn=99);
            translate([45,28,-1]) cylinder(h=3,r=3,$fn=99);
            translate([5,28,-1]) cylinder(h=3,r=3,$fn=99);
            
            //power cord hole 
            translate([-1,16.5,9]) rotate([0,90,0]) cylinder(r=1.5,h=12,$fn=99);
            
            translate([50,-2,0]) mirror([1,0,0]){
                translate([7,15,-1]) scale([0.6,0.6,1]) linear_extrude(height=1.6) text("Night Owl",font="Hobo std",$fn=60);

        }
            
        }

    }
}


module bottom(){
    translate([0, 40, 0]) union(){
        difference(){
            union(){
                difference(){
                    //main box
                    translate([25,16.5,0]) difference(){
                        roundedRect([43,27,18], 5);
                        translate([0,0,2]) roundedRect([41,25,23], 4);
                    }
                    
                }
                difference(){
                    //inner ledge
                    translate([25,16.5,0]) difference(){
                        roundedRect([39,23,7], 5);
                        translate([0,0,2]) roundedRect([36,21,9], 4);
                    }
                }
            }
            //screw holes
            translate([5,5,-1]) cylinder(h=21,r=2.2,$fn=99);
            translate([45,5,-1]) cylinder(h=21,r=2.2,$fn=99);
            translate([45,28,-1]) cylinder(h=21,r=2.2,$fn=99);
            translate([5,28,-1]) cylinder(h=21,r=2.2,$fn=99);
            
            //nut holes
            translate([5,5,-2]) cylinder(h=4.5,r=3.4,$fn=6);
            translate([45,5,-2]) cylinder(h=4.5,r=3.4,$fn=6);
            translate([45,28,-2]) cylinder(h=4.5,r=3.4,$fn=6);
            translate([5,28,-2]) cylinder(h=4.5,r=3.4,$fn=6);
            
            //LED hole
            translate([30,3,18]) rotate([90,0,0]) cylinder(h=5,r=3,$fn=99);
            
            //power cord hole
            translate([-1,16.5,18]) rotate([0,90,0]) cylinder(r=1.5,h=12,$fn=99);
                
        }
       translate([5,5,2]) screwsupport();
       translate([45,5,2 ]) rotate([0,0,90]) screwsupport();
       translate([45,28,2 ]) rotate([0,0,180]) screwsupport();
       translate([5,28,2 ]) rotate([0,0,-90]) screwsupport();
    }
}
//translate([0,73,27]) rotate([180,0,0])
translate([0,35,9]) rotate([180,0,0]) 
top();
bottom();