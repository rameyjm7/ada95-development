# a proof of concept application
f = open("/dev/ttyUSB0",'r')
line = f.readline()
f.close()
print(line)