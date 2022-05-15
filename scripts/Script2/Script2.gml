// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function rand(n) {
	if n > 0 {
		return irandom(n-1)
	}
	return 0;
}

function findEmptyCell(grid, size ) {
   var maxAttempts = 10;
   while (maxAttempts>=0) {
	   var row = rand(size);
	   var col = rand(size);
	   if (!grid[row, col]) {
		   grid[row, col] = true;
		   return [row, col];
	   }
	   maxAttempts--;
   }
   return [-1, -1];
}

function gridToRoom(cell,grid,size){
	var xx = cell[0] * room_width / gridSize;
	var yy = cell[1] * room_height/gridSize;
	return [xx,yy]
}
