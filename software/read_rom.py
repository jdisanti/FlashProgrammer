import serial

ser = serial.Serial();
ser.baudrate = 250000
ser.port = 'COM5'
ser.open()

if not ser.is_open:
    print("Failed to open serial connection")
    exit(1)

for address in range(0, 131072):
    ser.write(b'\x55')
    ser.write(address.to_bytes(3, byteorder = 'big'))
    data = ser.read()
    print(''.join('{:02x} '.format(x) for x in data), end='', flush=True)
