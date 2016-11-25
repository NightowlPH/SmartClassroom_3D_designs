$fn=300;
translate([0,0,20]) union(){
    translate([-0.1,-0.4,3.3]) difference(){
        translate([-125.5,-73,0]) import("9g_conn_top.stl", convexity=10);
        translate([-10,-3,-1]) cube([30,12,2.7]);
    }
    cube([7,7,5]);
}
module corner(){
    
   intersection(){
        cube([4,2,20]);
        cylinder(20,2,2);
    }
}
translate([0.85,0.85,0]) union(){
    cube([5.3,3.30,20]);
    translate([2,3.30,0]) cube([1.3,2,20]);
    translate([3.3,3.30,0]) corner();
    translate([2,3.30,0]) rotate([0,0,90]) corner();

}