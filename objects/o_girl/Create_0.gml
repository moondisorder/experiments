
myTxt[0]="Grrr"
myTxt[1]="I'm mad at dad"
myTxt[2]="Grrrrifffffithhhhh"
myTxt[3]="HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH"
curr=0;
txtLast=3;
camW=camera_get_view_width(view_camera[0])-32
camH=camera_get_view_height(view_camera[0])-32

instance_create_depth(
	camW,
	camH,
	-10000,
	o_textbox
)
hspd=0;
vspd=0;
spd=0.5;
dist=1

