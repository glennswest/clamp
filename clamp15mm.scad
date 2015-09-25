use <MCAD/nuts_and_bolts.scad>;


$fn=250;
theradius = 260 / 2;
module body()
{
    translate([-15,-40,0]) cube([30,80,17]);
    translate([-15,-60,0]) cube([30,120,10]);
}
module clamp()
{
    difference(){
        body();
        translate([-7, -50,-.1]) cube([15,3.1,21]);
        translate([-7, -50+1.5,-.1]) boltHole(3,length=20);
        translate([ 7.5, -50+1.5,-.1]) boltHole(3,length=20);
        translate([-7, 50,-.1]) cube([15,3.1,21]);
        translate([-7, 50+1.5,-.1]) boltHole(3,length=20);
        translate([ 7.5, 50+1.5,-.1]) boltHole(3,length=20);
       // translate([-15,-40,8]) cube([25,80,3]);
        translate([0-theradius-2,0,8]) cylinder(r=theradius,h=20);
        translate([12, -25,10.5]) rotate([0,-90,0]) boltHole(5,length=30);
        translate([12,  25,10.5]) rotate([0,-90,0]) boltHole(5,length=30);
        translate([ 5, -25,10.5]) rotate([0,-90,0]) nutHole(5.2,length=20);
        translate([ 5,  25,10.5]) rotate([0,-90,0]) nutHole(5.2,length=20);
        
        translate([ 5, -25,19]) rotate([0,-90,0]) nutHole(5.2,length=20);
        translate([ 5,  25,19]) rotate([0,-90,0]) nutHole(5.2,length=20);
        translate([ 5, -25,15]) rotate([0,-90,0]) nutHole(5.2,length=20);
        translate([ 5,  25,15]) rotate([0,-90,0]) nutHole(5.2,length=20);
        }
    }
    
    translate([0,0,15]) rotate([0,90,0]) clamp();