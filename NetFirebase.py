import os
import time
import network
import ufirebase as firebase


ssid="iotdevlab+virus"
passcode="m,./@1234"
wlan = network.WLAN(network.STA_IF)
wlan.active(True)
if not wlan.isconnected():
    wlan.connect(ssid, passcode)
    print("Waiting for Wi-Fi connection", end="...")
    while not wlan.isconnected():
        print(".", end="")
        time.sleep(1)
    print('network config:', wlan.ifconfig())
    

firebase.setURL("https://iothealth-6a509-default-rtdb.firebaseio.com/")



#firebase example



def DataToFireBase(Temp,Height,Oxygen,BP):
    firebase.addto("SensorData", {"Temperature": Temp, "Height": Height,"Oxygen":Oxygen,"BP":BP})

    firebase.get("SensorData", "Temperature", bg=False)
    print("SensorData "+str(firebase.Temperature))



