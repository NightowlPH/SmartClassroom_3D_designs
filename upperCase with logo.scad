
//*****************************cover on top********************//
    $fn=8;
translate([-60,0,0]){
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
}
 