// MODIFY THIS: color stepping size
vec3 stepSize = vec3(10);

void effect( vec4 color, Image tex, vec2 texture_coords, vec2 screen_coords )
{
    // Normalized pixel coordinates (from 0 to 1)
    vec2 uv = texture_coords/screen_coords

    vec3 tex;
    // MODIFY THIS: toggle between webcam and video textures
    //tex = texture(iChannel0, uv).rgb;
    tex = Texel(screen_coords, uv).rgb;
    
    col *= tex;
    
    // step the color range
    col *= stepSize;
    
    col = round(col);
    
    col /= stepSize;
    
    // Output to screen
    screen_coords = vec4(color,1.0);
}