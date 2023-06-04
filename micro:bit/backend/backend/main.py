def on_button_pressed_a():
    basic.show_number(Temperature)
    basic.show_string(".C ")
    basic.pause(1000)
    basic.clear_screen()
input.on_button_pressed(Button.A, on_button_pressed_a)

def on_button_pressed_ab():
    basic.show_string("Lumens")
    basic.show_number(Light)
    basic.pause(1000)
    basic.clear_screen()
input.on_button_pressed(Button.AB, on_button_pressed_ab)

def on_button_pressed_b():
    basic.show_string("Air Humid is")
    basic.show_number(Air_Humidity)
    basic.pause(1000)
    basic.clear_screen()
input.on_button_pressed(Button.B, on_button_pressed_b)

def on_received_value(name, value):
    global Water_Sensor_Top, Soil_Top, Soil_Bottom
    if name == "Water":
        Water_Sensor_Top = value
    if name == "Soil":
        Soil_Top = value
    if name == "Soil Top":
        Soil_Bottom = value
radio.on_received_value(on_received_value)

Soil_Bottom = 0
Soil_Top = 0
Water_Sensor_Top = 0
Temperature = 0
Light = 0
Air_Humidity = 0
ESP8266_IoT.init_wifi(SerialPin.P8, SerialPin.P12, BaudRate.BAUD_RATE115200)
radio.set_group(1)
Air_Humidity = Environment.dht11value(Environment.DHT11Type.DHT11_HUMIDITY, DigitalPin.P1)
Light = Environment.read_light_intensity(AnalogPin.P2)
Temperature = input.temperature()
Water_Sensor_Top = 0
Soil_Top = 0
Soil_Bottom = 0
ESP8266_IoT.connect_wifi("", "")
ESP8266_IoT.connect_thing_speak()
ESP8266_IoT.set_data("",
    Water_Sensor_Top,
    Soil_Top,
    Soil_Bottom,
    Temperature,
    Air_Humidity,
    Light)

def on_forever():
    global Temperature, Air_Humidity, Light
    Temperature = input.temperature()
    Air_Humidity = Environment.dht11value(Environment.DHT11Type.DHT11_HUMIDITY, DigitalPin.P1)
    Light = Environment.read_light_intensity(AnalogPin.P2)
    if ESP8266_IoT.wifi_state(True):
        basic.show_icon(IconNames.YES)
        basic.pause(1000)
        basic.clear_screen()
        ESP8266_IoT.upload_data()
        basic.pause(1000)
    else:
        basic.show_icon(IconNames.NO)
basic.forever(on_forever)
