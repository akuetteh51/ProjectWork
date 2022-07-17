from machine import Pin,SPI
from  ST7735 import Display, color565
import fonts as sysfont
sck = Pin(18)
miso= Pin(19)
mosi= Pin(23)
SPI_CS = 26
SPI_DC = 5
spi = SPI(2, baudrate=32000000, sck=sck, mosi=mosi, miso=miso)
display=Display(spi,SPI_CS,SPI_DC)
display.draw_text(0, 0, 'Hello World!', sysfont, color565(255, 0, 0))    