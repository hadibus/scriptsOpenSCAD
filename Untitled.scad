rotate([180,0,0]){difference(){
    union(){
        cylinder(12,6/2,6/2, $fn = 100);
        translate([0,0,12])
            cylinder(1.5,13/2,10.5/2, $fn = 100);
    }
    cylinder(15,5/2,5/2, $fn = 100);
    translate([0,0,12])
        cylinder(1.5,3.5/2,8/2, $fn = 100);
}}