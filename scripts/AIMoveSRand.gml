image_angle = direction;

motion_set(image_angle, currentSpeed);

if (irandom(1) == 1)
{
    if (currentSpeed < maxSpeed)
    {
        currentSpeed += accelRate;
    }
}

if (irandom(5) == 1)
{
    direction += turnSpeed;
}
    
if (irandom(5) == 1)
{
    direction -= turnSpeed;
}
  
if (irandom(5) == 1)
{
    
    if (currentSpeed > 0)
    {
        currentSpeed -= (.55 * accelRate);
    }
    
    else if (currentSpeed > maxReverseSpeed)
    {
        currentSpeed -= (.25 * accelRate);
    }
            
}
