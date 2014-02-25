# Request messages for the recognizer service.
# It is possible to request and actiovation task, 
# a grammar management task and lanaguage change or just
# resquest the current status.

# Type of request list
int8 ACTIVATION = 0
int8 GRAMMAR = 1
int8 LANGUAGE = 2
int8 STATUS = 3

# Message variables
# list of requests types (several requests can be send in one single message)
int8[] requests

# Informatino realted to each possible request
# except for status that does not need any additional info.
ASRActivation activation
ASRGrammarMngmt grammar
ASRLanguage lang
