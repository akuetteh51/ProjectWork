import mlx90614
from machine import I2C, Pin

i2c = I2C(1,scl=Pin(22), sda=Pin(21))