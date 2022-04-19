import mlx90614
from machine import SoftI2C, Pin

i2c = SoftI2C(scl=Pin(22), sda=Pin(21),freq=100000)
sensor = mlx90614.MLX90614(i2c)

print(sensor.read_ambient_temp(),sensor.read_object_temp())
# print(sensor.read_object_temp())
# if sensor.dual_zone:
#     print(sensor.object2_temp)
#     