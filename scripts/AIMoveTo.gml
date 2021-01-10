image_angle = direction;

motion_set(image_angle, currentSpeed);

// Accelerate
if (currentSpeed < maxSpeed)
{
    currentSpeed += accelRate;
}


if (point_direction(x, y, argument0.x, argument0.y) - direction > 90 || point_direction(x, y, argument0.x, argument0.y) - direction < -90)
{
    direction += turnSpeed;
}
else
{
    direction -= turnSpeed;
}

/*if (irandom(5) == 1)
{
    direction += turnSpeed;
}
    
if (irandom(5) == 1)
{
    direction -= turnSpeed;
}*/
  
// Decel
/*if (irandom(5) == 1)
{  
    if (currentSpeed > 0)
    {
        currentSpeed -= (.55 * accelRate);
    }
    
    else if (currentSpeed > maxReverseSpeed)
    {
        currentSpeed -= (.25 * accelRate);
    }      
}*/
