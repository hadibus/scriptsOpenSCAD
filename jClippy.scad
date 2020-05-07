rotate([90,0,0])
union(){
thick = 2.5;
//base
difference(){
    linear_extrude(thick) minkowski(){
        cRad = 5;
        square(size = [30-cRad,15-cRad],
               center = true);
        circle(d=cRad, $fn=100);
    }
    translate([6.75,0,0])
    cylinder(h = 6, d = 6, $fn = 100);
    
    translate([-6.75,0,0])
    cylinder(h = 6, d = 6, $fn = 100);
}


//clippy
linear_extrude(13){
    square(size = [thick,15],
           center = true);
}

translate([7.5-thick/2,0,13-thick])
linear_extrude(thick)
minkowski(){
    di = 5;
    square(size = [15-di,15-di], center=true);
    circle(d=di, $fn=100);
}

//clippy flange north
hull()
{
    translate([10,6.75,13-thick/4])
    rotate([90,0,0])
    cylinder(h = 1.5, d = thick, $fn=100, center = true);

    translate([-thick/2,6.75,14-thick/2])
    rotate([90,0,0])
    cylinder(h = 1.5, r = thick*.75, $fn=100, center = true);
}

hull(){
    translate([-thick/2,6.75,14-thick/2])
    rotate([90,0,0])
    cylinder(h = 1.5, r = thick*.75, $fn=100, center = true);
    
    translate([-10,6.75,thick/2])
    rotate([90,0,0])
    cylinder(h = 1.5, d = thick, $fn=100, center = true);
    
    translate([0,6.75,thick/2])
    rotate([90,0,0])
    cylinder(h = 1.5, d = thick, $fn=100, center = true);
}

//clippy flange south
hull()
{
    translate([10,-6.75,13-thick/4])
    rotate([90,0,0])
    cylinder(h = 1.5, d = thick, $fn=100, center = true);

    translate([-thick/2,-6.75,14-thick/2])
    rotate([90,0,0])
    cylinder(h = 1.5, r = thick*.75, $fn=100, center = true);
}

hull(){
    translate([-thick/2,-6.75,14-thick/2])
    rotate([90,0,0])
    cylinder(h = 1.5, r = thick*.75, $fn=100, center = true);
    
    translate([-10,-6.75,thick/2])
    rotate([90,0,0])
    cylinder(h = 1.5, d = thick, $fn=100, center = true);
    
    translate([0,-6.75,thick/2])
    rotate([90,0,0])
    cylinder(h = 1.5, d = thick, $fn=100, center = true);
}
}



//translate([6.75,0,2]) cylinder(h = 3, d = 10, $fn = 100);