
##########################################
#
# Face detection data
#
##########################################

#####################
# Face bounding box
#####################
# coordinates of the top left corner of the box
int32 x
int32 y

# width of the box
int32 width

# height of the box
int32 height

############################
# Eyes position (if found)
############################

bool eyesLocated

int32 leftEyeX
int32 leftEyeY
int32 rightEyeX
int32 rightEyeY

#############################
# Centre of eyes 3D estimate
#############################
geometry_msgs/Point32 position


############################
# Person recognition
############################

string name
float32 confidence

############################
# Facial expression
############################
string EXPRESSION_NEUTRAL="neutral"
string EXPRESSION_SMILE="smile"
string EXPRESSION_RAISED_BROWS="raised brows"
string EXPRESSION_EYES_AWAY="eyes away"
string EXPRESSION_SQUINTING="squinting"
string EXPRESSION_FROWNING="frowning"
string expression
float32 expression_confidence

