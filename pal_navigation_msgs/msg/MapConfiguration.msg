#Configuration of a map
int32 numberOfSubMaps

#Highways of the map
pal_navigation_msgs/Highways[] highways

#Points of direction of the map
pal_navigation_msgs/POI pods

#Points of interest of the map
pal_navigation_msgs/POI pois

#Virtual obstacles of the map
pal_navigation_msgs/POI vo

#Zones of interest of the map
pal_navigation_msgs/POI zoi

#Ramps of the map
pal_navigation_msgs/POI ramps

#POI Groups of the map
pal_navigation_msgs/POIGroup[] poigroups

# Deprecated
pal_navigation_msgs/VisualLocDB visualLocDb

#Real (ugly) map 
nav_msgs/OccupancyGrid navigation_map

#Pretty map
sensor_msgs/Image user_map

# Deprecated, now the user_map must be transformed to match the scale/
# orientation of the navigation_map
#Transformation between ugly and pretty map
pal_navigation_msgs/NiceMapTransformation transform


