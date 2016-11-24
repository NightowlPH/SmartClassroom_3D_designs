// You could simply do it this way if you have the boxes.scad
// file in your library
//use <boxes.scad>
//roundedBox([20, 30, 40], 5, true); 
 $fn=99;
// Or, you could do it this way if you want to roll your own
translate([-0.01,0,0])difference(){
    roundedRect([57, 59, 30], 5);
    translate([0,0,3]) roundedRect([52, 54, 33], 5, $fn=99);
    translate([27,0,7.5]) rotate([0,90,0]) cylinder(10,4.5,4.5);

translate([-32,8.60,6]) cube([5,16,16]);
    translate([-32,-24,6]) cube([5,16,16]);

}
           


// size - [x,y,z]
// radius - radius of corners
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
		circle(r=radius);
	
		translate([(x/2)-(radius/2), (-y/2)+(radius/2), 0])
		circle(r=radius);
	
		translate([(-x/2)+(radius/2), (y/2)-(radius/2), 0])
		circle(r=radius);
	
		translate([(x/2)-(radius/2), (y/2)-(radius/2), 0])
		circle(r=radius);
	}
}
//PCV
translate([56,0,0])rotate([0,0,180])difference(){
    
    roundedRect([50, 56, 9.15], 5);
    translate([0,0,3])  roundedRect([42, 46, 10], 5, $fn=99);
    translate([21,0,7.5]) rotate([0,90,0]) cylinder(10,4.5,4.5);
}


//top case of the UTP

translate([68,-65,0])rotate([0,0,0]){
    translate([-70,0,4]) roundedRect([57, 59, 3], 5);
    translate([-70,-0,7])difference()
    {
        roundedRect([51.50, 55, 3], 5);
        translate([0,0,1]) roundedRect([49, 60, 5], 5);
        translate([-27,-31,-2])cube([54,63,6]);
            
    }
}


    
    
// translate([0,0,-3]) roundedRect([52, 54, 4], 5, $fn=99);
// translate([27,0,7.5]) rotate([0,90,0]) cylinder(10,4.5,4.5);


translate([56,0,0])rotate([0,0,180])difference(){
    
    roundedRect([50, 56, 9.15], 5);
    translate([0,0,3])  roundedRect([42, 46, 10], 5, $fn=99);
    translate([21,0,7.5]) rotate([0,90,0]) cylinder(10,4.5,4.5);
}

//PCV top cover
//rotate([0,180,0])translate([-130,0,-5])
translate([0,-65,15]) rotate([180,0,0]) translate([56,0,10]) rotate([0,0,180]){
    difference(){
        union(){
            roundedRect([50, 56, 5], 5);
            translate([0,0,-4]) roundedRect([41, 45.5, 9], 5);
        }
        translate([25,-33,-1]) cube([5,66,10]);
        translate([0,0,-13])  roundedRect([42, 40, 15], 5);
        translate([20,0,-1.69]) rotate([0,90,0]) cylinder(10,4.5,4.5); 
        translate([-10,19,0]) cylinder(r=2.5,h=10);
        translate([-2,19,0]) cylinder(r=2.5,h=10);
        translate([-2,-11,1]) cylinder(r=3.5,h=10);
    }
}

//translate([-33,-8,8])cube([4,16.50,6]);


//lock of the upper case of the UTP
//
//translate([-0.01,0,31])difference(){
// 
//    roundedRect([55, 59, 2], 5);
//    translate([0,0,-3]) roundedRect([52, 54, 8], 5, $fn=99);
//    
////    roundedRect([57, 59, 2], 5);
////    translate([0,0,-3]) roundedRect([52, 54, 8], 5, $fn=99);
////    translate([27,0,7.5]) rotate([0,90,0]) cylinder(10,4.5,4.5);
//}


    








