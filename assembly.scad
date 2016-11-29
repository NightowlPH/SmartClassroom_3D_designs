$fn=300;
$spacing=1.1;




color([0.2,0.2,0.2]){
    
    translate([$spacing*160,10,0]) rotate([0,-90,0]) import("jcoverDoor.stl",convexity=30);
    translate([$spacing*20,0,0]) rotate([0,90,0]) import("Jdoorservo.stl",convexity=30);
}
color([0.6,0.6,0.6]) translate([$spacing*55,10,5]) rotate([0,90,0]) import("new servo lock attachment.stl",convexity=30);
color([196/255,158/255,77/255]){
    difference(){
        translate([4,-10,-10]) cube([12,50,20]);
        translate([18,0,0]) rotate([0,-90,0]) scale([1.01,1.01,1]) import("Jdoorservo.stl",convexity=30);
        translate([18,10,-5]) rotate([0,-90,0]) import("new servo lock attachment.stl",convexity=30);
    }
    translate([10,50,0]) rotate([90,0,0]) cylinder(h=10,r=5);
}


//servi
color([101/255,147/255,198/255]) translate([$spacing*120,7,-20]) rotate([0,0,90]) import("Servo_Tower_Pro_MG90S_-_dummy/files/MG90S.STL", convexity=30);


color([112/255,71/255,34/255]) difference(){
    //Door
    translate([$spacing*-60,-160,-100]) cube([50,200,200]);
    translate([$spacing*-30,10,0]) rotate([0,90,0]) cylinder(h=50,r=30);
}