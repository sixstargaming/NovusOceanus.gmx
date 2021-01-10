/*
    Note: Distance is in pixels
*/

// Too close to player, move away
if(distance_to_object(obj_boat) < 100)
{
    AIMoveFrom(obj_boat);
    //AIMoveEscape();
}

// Too far from player, move closer
else if (distance_to_object(obj_boat) > 125)
{
    AIMoveTo(obj_boat);
    //AIMoveIntercept();
}

// In all other instances stop turning
else
{
    AIMoveContinueAction();
}
