# Worley Noise for Unity

Implementation of Worley Noise algorithm based on Steven Worley's noise function.
Can generate procedural (tiled) 2D and 3D Worley Noise textures with a specified seed.

Includes:
- A noise generator component for adjusting the noise generation parameters
- Two compute shaders for generating the noise textures (2D and 3D) 
- Universal Render Pipeline (URP) -friendly shaders for displaying the noise textures

The compute shaders are based on Sebastian Lague's [Coding Adventure: Clouds](https://www.youtube.com/watch?v=4QOcCGI6xOU) video. The cell feature point distance calculation is slightly different. Also, note that the resulted noise value is inverted in the compute shaders.

### Example GIFs
#### XY offset
![](tiling.gif)
#### Z offset
![](depth.gif)
