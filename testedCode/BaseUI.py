from hello import printOnTft
from net import do_connect
temp='35.0'
printOnTft(x=0,y=1,arguments='Temperature:'+temp,red=230,green=20,blue=55)
printOnTft(x=0,y=35,arguments='Hello World! ')
printOnTft(x=0,y=55,arguments='Hello World! okay jkwdjkg')


#     'Temperature',color565(255, 0, 0))
# printOnTft('IBM',color565(255, 0, 0))
# printOnTft('Pluse',color565(255, 0, 0))