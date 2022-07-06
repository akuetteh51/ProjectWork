import time
import mlx90614 
from machine import I2C, Pin

i2c = I2C(scl=Pin(22), sda=Pin(21))
temp = mlx90614.MLX90614(i2c,address=0x5a)

def gy_906():
    return temp.read_ambient_temp(), temp.read_object_temp()
def vl53lxx_v2():
    

while True:
	print(gy_906())
	time.sleep_ms(500)