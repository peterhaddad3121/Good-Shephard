//Just call this script targetting the layer ID that you want.
//In the demo I used the room creation code for this. Do it how you like!
layer_script_begin(argument0,WaveLayerStart);
layer_script_end(argument0,WaveLayerEnd);
global.wavesurf = surface_create(room_width,room_height);