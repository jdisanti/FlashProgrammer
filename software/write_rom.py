import serial

ser = serial.Serial();
ser.baudrate = 38400
ser.port = 'COM4'
ser.open()

if not ser.is_open:
    print("Failed to open serial connection")
    exit(1)

# Erase
# Commented as this won't work on the current board (A9 problem)
#ser.write(b'\xEE')
#print("Chip erased")

# Write a few bytes
ser.write(b'\xAA')
for address in range(0, 0x00020000):
    ser.write(b'\xEA')

print("Bytes written")
