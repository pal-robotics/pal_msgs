#Configuration of a map

#Points of interest of the map
pal_navigation_msgs/POI pois

#Virtual obstacles of the map
pal_navigation_msgs/POI vo


#Zones of interest of the map
pal_navigation_msgs/POI zoi

string visualLocDbId

#Real (ugly) map 
nav_msgs/OccupancyGrid navigation_map

#Pretty map
sensor_msgs/Image user_map

#Transformation between ugly and pretty map
pal_navigation_msgs/NiceMapTransformation transform


