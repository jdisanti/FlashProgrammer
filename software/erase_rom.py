import serial

ser = serial.Serial();
ser.baudrate = 500000
ser.port = 'COM5'
ser.open()

if not ser.is_open:
    print("Failed to open serial connection")
    exit(1)

# Erase
# Commented as this won't work on the current board (A9 problem)
ser.write(b'\xEE')
print("Chip erased")

