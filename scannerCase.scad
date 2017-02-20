////************SCANNER CASE**************////
color("ForestGreen")rotate([0,0,22.6]){translate([-23,-31,4])difference()
{
    
    translate([0,0,-1])cube([45.18,63,10.02]);
    translate([1.5,1.5,-4])cube([42.18,60,16]);
                    //
    translate([-1,12,-2])cube([60,40,30]);
    translate([12,-1,-2])cube([ 22,65,30]); 
}
}

//salo
color("PaleTurquoise")translate([0,0,-1]){rotate([0,0,22.6])
{
    translate([-22,-30,9])cube([10,2,3]);
    translate([-22,-30,9])cube([2,10,3]);
    //
    translate([12,-30,9])cube([10,2,3]);
    translate([19,-30,,9])cube([2,10,3]);
//.................
    translate([-22,29,9])cube([10,2,3]);
    translate([-22,21.8,9])cube([2,10,3]);
    //
    translate([12,29,9])cube([10,2,3]);
    translate([19,21.8,,9])cube([2,10,3]);
    //**** 
    //translate([15.3,25.5,0])cube([5.2,5,10]);
}
}
$fn=8;
difference(){
color("LightSalmon")difference()
{
    
    cylinder(h=15,r=49);
    translate([0,0,3])cylinder(h=20,r=47);
    //hole in base
    rotate([0,0,22.6])translate([-12.6,13,-1])cube([28,16,6]);
}
   
    //// BASE SCREW LOCK
    
    translate([0,0,-3])rotate([0,0,90])color("PaleTurquoise"){  
        
    difference(){
        translate([43,0,0])cylinder(h=10, r=1.5,$fn=60);
    }   
    difference(){    
        translate([-43,0,0])cylinder(h=10, r=1.5,$fn=60);
    }
        
rotate([0,0,45]){    
    
    difference(){
        translate([43,0,0])cylinder(h=10, r=1.5,$fn=60);
    }
    
    difference(){
        translate([-43,0,0])cylinder(h=10, r=1.5,$fn=60);
    }
    

}
    
}    
    }
    
//translate([0,-19,0])rotate([0,0,22.6])color("red")cube([20,50,15]);
////    SCREWS for top CASE
translate([0,0,0.1])color("PaleTurquoise"){  
    difference(){
        translate([45,0,0])cylinder(h=14.99, r=3,$fn=60);
        translate([45,0,0])cylinder(h=40, r=1.5,$fn=60);
    }   
    difference(){    
        translate([-45,0,0])cylinder(h=14.99, r=3,$fn=60);
        translate([-45,0,0])cylinder(h=40, r=1.5,$fn=60);
    }
        
rotate([0,0,45]){    
    
    difference(){
        translate([45,0,0])cylinder(h=14.99, r=3,$fn=60);
        translate([45,0,0])cylinder(h=40, r=1.5,$fn=60);
    }
    
    difference(){
        translate([-45,0,0])cylinder(h=14.99, r=3,$fn=60);
        translate([-45,0,0])cylinder(h=40, r=1.5,$fn=60);
    }
    

}
    
}    
//translate([-41,-19,10])rotate([0,0,22.6])cube([90.2,20,10]);

//*****************************cover on top********************//
    $fn=8;

translate([100,0,0])color("LightSalmon")difference()
{

    cylinder(h=3,r=49);
    
translate([0,0,-2])color("PaleTurquoise"){  
    difference(){
   
        translate([45,0,0])cylinder(h=40, r=1.5,$fn=60);
    }   
    difference(){    
        
        translate([-45,0,0])cylinder(h=40, r=1.5,$fn=60);
    }
        
rotate([0,0,45]){    
    
    difference(){
       
        translate([45,0,0])cylinder(h=40, r=1.5,$fn=60);
    }
    
    difference(){
    
        translate([-45,0,0])cylinder(h=40, r=1.5,$fn=60);
    }
    

}
    
    
}
}
//*****************************logo*****************************//
rotate([0,0,22.6]){translate([64,-70,3])scale([0.07,0.07,0.2])linear_extrude(height=5)
    
    import("/Users/incubation/Downloads/nightowl-logo-only_no_network (1).dxf",convexity=60);
    scale([0.5,0.5,4])translate([155,-25,0.6])text("Night Owl",font="Hobo std",$fn=60);
    rotate([0,0,22.6])translate([64.7,-70,2])cylinder(h=2, r=1.5,$fn=60);
    rotate([0,0,22.6])translate([74,-74,2])cylinder(h=2, r=1.5,$fn=60);
}

 