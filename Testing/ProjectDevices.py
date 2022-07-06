
import mlx90614
from vl53l0xV2 import VL53L0X
import time
from machine import I2C, Pin


i2c = I2C(scl=Pin(22), sda=Pin(21))
temp = mlx90614.MLX90614(i2c,address=0x5a)
tof=VL53L0X(i2c,address=0x29)



def gy_906():
    data=temp.read_ambient_temp(), temp.read_object_temp()
    time.sleep_ms(500)
    
    return data



def totHeight():
    budget = tof.measurement_timing_budget_us
    #print("Budget was:", budget)
    tof.set_measurement_timing_budget(40000)
    tof.set_Vcsel_pulse_period(tof.vcsel_period_type[0], 12)
    tof.set_Vcsel_pulse_period(tof.vcsel_period_type[1], 8)
    return tof.ping()-50
    
    
def gy_max302():
    print("Driver not present")

    

        
while True:
    print("your height is "+str(totHeight()),"mm"+" your body temperature is "+str(gy_906()))
    
 