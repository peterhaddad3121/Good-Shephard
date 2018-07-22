/*
Hi!

First thing to note is this setup will get _very expensive_
if used on a very large room.

It's ok if your room is about screen size. But bigger than that, you'll want to adjust the surface
size + position to be based on your camera/views rather than room size which it uses now for simplicity.

HOW TO USE THIS ASSET:

1. Include all 3 of the scripts
2. Call "InitializeWaveLayer(layerid)". 
3. Run the game and observe the effect.
4. Adjust the various hardcoded (lol sorry) numbers throughout the script.
5. Chill.
Optional. For confident programmers, having now learned the general method, rewrite this yourself but better suited to your project.

You may need to adjust numbers used in the shWave fragment shader in order to fine tune your effect.
Same goes for WaveLayerEnd, and the two colouring fragment shaders.

Hope you found this useful. Follow my stuff at @shaunspalding on twitter.

Help me make more stuff by supporting at patreon.com/shaunjs

Bye!
*/