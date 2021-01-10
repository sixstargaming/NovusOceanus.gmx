if (instance_exists(obj_projectile))
{
    if (distance_to_object(instance_nearest(x, y, obj_projectile)) < 100)
    {
        AIEvade(obj_projectile);
    }
    else
    {
        AIMovement();
    }
}   
else
{
     AIMovement();
}
