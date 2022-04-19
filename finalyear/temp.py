import mlx90614
from machine import SoftI2C, Pin


def temperature(sda=22,scl=21):
    i2c = SoftI2C(scl=Pin(sda), sda=Pin(scl),freq=100000)
    sensor = mlx90614.MLX90614(i2c)

    return sensor.read_ambient_temp(),sensor.read_object_temp()
