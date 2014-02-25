# Desription of and audio device.

int8 SIGNED = 0
int8 UNSIGNED = 1


# name of the device (usually a portaudio name)
string device_name

# samples rate of the adquired audio signal
uint32 sample_rate

# sample size in bits
uint8 sample_size

# format can be SIGNED or UNSIGNED
uint8 format

# buffer size used to adquire data.
uint16 buffer_size

# number of recorded channels
uint8 number_of_channels