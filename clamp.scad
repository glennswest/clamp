use <MCAD/nuts_and_bolts.scad>;


$fn=100;

module clamp()
{
    difference(){
        translate([-15,-40,0]) cube([30,80,20]);
        translate([-15,-40,7]) cube([25,80,5]);
        translate([-115,0,7]) cylinder(r=110,h=20);
        translate([5, -25,18]) rotate([0,180,0]) boltHole(5,length=20);
        translate([5,  25,18]) rotate([0,180,0]) boltHole(5,length=20);
        translate([5, -25,2]) rotate([0,180,0]) nutHole(5,length=20);
        translate([5,  25,2]) rotate([0,180,0]) nutHole(5,length=20);
        }
    }
    
    translate([0,0,15]) rotate([0,90,0]) clamp();