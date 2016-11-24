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
        cube([4,4,20]);
        cylinder(20,2,2);
    }
}
union(){
    cube([7,5,20]);
    translate([2,5,0]) cube([3,2,20]);
    translate([5,5,0]) corner();
    translate([2,5,0]) rotate([0,0,90]) corner();

}