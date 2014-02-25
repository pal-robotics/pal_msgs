## Message that containes the recognized utterance.
## Confidence values
uint8 CONFIDENCE_UNDEFINED = 0
uint8 CONFIDENCE_POOR = 1
uint8 CONFIDENCE_LOW  = 2
uint8 CONFIDENCE_GOOD = 3
uint8 CONFIDENCE_MAX  = 4

# ASR result messages used by RosRecognizerServer

# text recognized
string text

# confidence with values fomr POOR to MAX
uint8 confidence

# estart and end of the recognizer uterance.
time start
time end

# list of recognized tags
# key value pairs of strings extracted from the text
# given the action tags placed in the grammar.
actiontag[] tags
