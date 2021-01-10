//check if moving, reduce speed in proper directino if so


if (currentSpeed != 0)
{
    if (currentSpeed > 0)
    {
        currentSpeed -= waterRes;
    }
    
    else if (currentSpeed < 0)
    {
    currentSpeed += waterRes;
    }
}



//assigning keypresess to variables
keyW = keyboard_check(ord("W"));
keyA = keyboard_check(ord("A"));
keyS = keyboard_check(ord("S"));
keyD = keyboard_check(ord("D"));

key1 = keyboard_check(ord("1"));
key2 = keyboard_check(ord("2"));

//tie image angle to direction
image_angle = direction;

//animation (currently failing, will need spritework)
image_speed = .25;

//use current direction, apply speed to it

motion_set(direction,currentSpeed);

//take input and affect movement accordingly
if (keyW)
{
    if (currentSpeed < maxSpeed)
    {
        currentSpeed += accelRate;
    }
}

//in/decrements direction by factor of turnspeed, changing the heading
if (keyA)
{
    direction += turnSpeed;
}
    
if (keyD)
{
    direction -= turnSpeed;
}
  
if (keyS)
{

//slows or reverse based on speed;
//show_debug_message(obj_boat.currentSpeed);
   if (currentSpeed > 0)
    {
        currentSpeed -= (.55 * accelRate);
    }
    
    else if (currentSpeed > maxReverseSpeed)
    {
        currentSpeed -= (accelRate);
    }
            
}

//weapon selection
if (key1)
{
    selectedWeapon = 1;
    selectedWeaponText = "Cannon";
}

if (key2)
{
    selectedWeapon = 2;
    selectedWeaponText = "Shotgun";
}
