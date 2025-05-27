//To get the same graphic as shown in the video, 
//move the part definitons for Oven and Rack to a package 
//and import the package in this file. 

part def Oven;
part def Rack;

part oven1: Oven {
	part racks[2]: Rack;
}

part oven2: Oven {
	part racks[1..3]: Rack;
}
