import serial

ser = serial.Serial();
ser.baudrate = 500000
ser.port = 'COM5'
ser.open()

if not ser.is_open:
    print("Failed to open serial connection")
    exit(1)

chunk_size = 256
rom_size = 131072

for chunk in range(0, rom_size // chunk_size):
    start = chunk * chunk_size
    end = (chunk + 1) * chunk_size

    ser.write(b'\x55')
    ser.write(start.to_bytes(3, byteorder = 'big'))
    ser.write(end.to_bytes(3, byteorder = 'big'))

    for address in range(start, end):
        data = ser.read()
        print(''.join('{:02x} '.format(x) for x in data), end='')

print("", flush=True)
