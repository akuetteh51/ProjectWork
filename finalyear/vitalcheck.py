import time
import mlx90614
from machine import SoftI2C, Pin

i2c = SoftI2C(scl=Pin(22), sda=Pin(21),freq=100000)
sensor = mlx90614.MLX90614(i2c)

while True:
    #temp  = sensor.read_ambient_temp()
    print("teperature of Environment :",sensor.read_ambient_temp(), "  Temperature of body: ",sensor.read_object_temp())
    time.sleep_ms(1000)
#     if temp >=10 and temp <=100:
#         print(temp)
          #, sensor.read_object_temp())
	