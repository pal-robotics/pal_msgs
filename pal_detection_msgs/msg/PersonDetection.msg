## Contains detection correspondences among the different person detectors available

# full body image detection. If width == height == 0 then no full body detection is available
pal_detection_msgs/Detection2d full_body

# face image detection. If width == height == 0 then the face has not been detected
pal_detection_msgs/FaceDetection face

# leg detection in laser scan. If Point is (0,0,0) then no legs have been detected
pal_detection_msgs/LegDetections legs

