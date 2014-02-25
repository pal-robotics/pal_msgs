# THis message is to be used in the ASR service to manage the grammars
# it is possible to enable/disable, load/unload grammars.


# Tyes of action
int8 ENABLE = 0
int8 DISABLE = 1
int8 LOAD = 2
int8 UNLOAD = 3

# Message variables
# Type of action requested
int8 action

# Name of the grammar to actuate on.
string grammarName
