if (argument0.speed == 0)
{
    AIMoveTo(argument0);
    return 0;
}

image_angle = direction;

motion_set(image_angle, currentSpeed);

// Accelerate
if (currentSpeed < maxSpeed)
{
    currentSpeed += accelRate;
}


if (argument0.direction - direction > 90 || argument0.direction - direction < -90)
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
