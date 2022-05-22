randomize();
global.gameOver=false;
global.Tries=0
global.Score=0;
global.shellCount=0;
global.lvl=1;
maxTries=10;
maxBubbles=5;

//depths
global.guiDepth=-9000
global.sparkleDepth=-9000;


//declare our assets
enum assetType {
	natural,
	built,
	rubbish,
	misc
}
	
gridSize = 10;
naturalAssets=[o_kelp1,o_kelp2];
obstructionAssets=[o_rock1,o_rock2];
builtAssets=[];
rubbishAssets=[o_plastic,o_plastic2];
specialAssets=[o_anchor];
assets = [
	naturalAssets,
	obstructionAssets,
	builtAssets,
	rubbishAssets,
	specialAssets
];

/// number of assets
if global.lvl=1{
	nAssets = [20,5,0,3,1];
}

//allocation grid
agrid = array_create(gridSize,10)
for (i = 0; i<gridSize; i++) {
	agrid[i] = array_create(gridSize, false);
}
 
//allocated cells
acells = array_create();

// rubbish grid 
rgrid = array_create(gridSize,10)
for (i = 0; i<gridSize; i++) {
	rgrid[i] = array_create(gridSize, false);
}

for (i = 0; i < array_length(assets); i++) {
	var assGroup = assets[i];
	var nAss = nAssets[i];
	if (nAss == 0) {
		continue;
	}
	for (j = 0; j < nAss; j++) {
		var	idx = rand(array_length(assGroup));
		var cell = findEmptyCell(agrid,gridSize);
		if (cell[0] == -1) {
			show_debug_message("Could not find empty cell")
			break;
		}
		var xy = gridToRoom(cell,agrid,gridSize);
		instance_create_depth(xy[0],xy[1],-3000,assGroup[idx]);
		
		//record allocate cells
		array_push(acells,cell)
		
		//record where rubbish is located
		if (i == assetType.rubbish){
			rgrid[row,col]=true;
		}
	}
}

// placing seashell
var	idx = rand(array_length(acells));
var shellCell = acells[idx]
var xy = gridToRoom(shellCell,agrid,gridSize);
if global.lvl=1{
	 instance_create_depth(xy[0],xy[1],-2000,o_shell);
}

show_debug_message("Shell location="+string(xy))

//place player
var playerCell = findEmptyCell(agrid,gridSize);
var xy = gridToRoom(playerCell,agrid,gridSize);
instance_create_depth(xy[0],xy[1],-2000,o_cuttle);


//place bubbles 

//instance_create_depth(xy[0],xy[1],-6000,o_bubble);
//instance_create_depth(xy[0],xy[1],-6000,o_bubble);

///camera
/*
view_enabled = true;
view_visible[0] = true;

view_xport[0] = 0;
view_yport[0] = 0;
view_wport[0] = 500;
view_hport[0] = 300;

view_camera[0] = camera_create_view(
	0,
	0,
	view_wport[0],
	view_hport[0],
	0,
	o_cuttle,
	-1,
	-1,
	100,
	100
);

var _dwidth = display_get_width();
var _dheight = display_get_height();
var _xpos = (_dwidth / 2) - 480;
var _ypos = (_dheight / 2) - 270;
window_set_rectangle(_xpos, _ypos, 1920, 1080);

surface_resize(application_surface, 960, 540);

xx= camera_get_view_x(view_camera[0])
yy= camera_get_view_y(view_camera[0])

//environmental tidbits
*/
var i;
for(i = 0; i < maxBubbles; i++){
	 var bub1 = instance_create_depth(irandom(room_width),irandom(room_height-32),global.sparkleDepth,o_bubble)
	 var bub2 = instance_create_depth(irandom(room_width),irandom(room_height-32),global.sparkleDepth,o_bubble2);
	}
