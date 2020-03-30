
if x != xprevious || y != yprevious {
    switch (point_direction(xprevious, yprevious, x, y) + 45) div 90 {
    case 4:
    case 0:
        sprite_index = sNeutralRight;
        break;
    case 1:
        sprite_index = sNeutralBack;
        break;
    case 2:
        sprite_index = sNeutralLeft;
        break;
    case 3:
        sprite_index = sNeutralFront;
        break;
    }
}