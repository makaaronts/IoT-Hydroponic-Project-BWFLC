input.onButtonPressed(Button.A, function on_button_pressed_a() {
    basic.showNumber(Temperature)
    basic.showString(".C ")
    basic.pause(1000)
    basic.clearScreen()
})
input.onButtonPressed(Button.AB, function on_button_pressed_ab() {
    basic.showString("Lumens")
    basic.showNumber(Light)
    basic.pause(1000)
    basic.clearScreen()
})
input.onButtonPressed(Button.B, function on_button_pressed_b() {
    basic.showString("Air Humid is")
    basic.showNumber(Air_Humidity)
    basic.pause(1000)
    basic.clearScreen()
})
radio.onReceivedValue(function on_received_value(name: string, value: number) {
    
    if (name == "Water") {
        Water_Sensor_Top = value
    }
    
    if (name == "Soil") {
        Soil_Top = value
    }
    
    if (name == "Soil Top") {
        Soil_Bottom = value
    }
    
})
let Soil_Bottom = 0
let Soil_Top = 0
let Water_Sensor_Top = 0
let Temperature = 0
let Light = 0
let Air_Humidity = 0
ESP8266_IoT.initWIFI(SerialPin.P8, SerialPin.P12, BaudRate.BaudRate115200)
radio.setGroup(1)
Air_Humidity = Environment.dht11value(Environment.DHT11Type.DHT11_humidity, DigitalPin.P1)
Light = Environment.ReadLightIntensity(AnalogPin.P2)
Temperature = input.temperature()
Water_Sensor_Top = 0
Soil_Top = 0
Soil_Bottom = 0
ESP8266_IoT.connectWifi("", "")
ESP8266_IoT.connectThingSpeak()
ESP8266_IoT.setData("", Water_Sensor_Top, Soil_Top, Soil_Bottom, Temperature, Air_Humidity, Light)
basic.forever(function on_forever() {
    
    Temperature = input.temperature()
    Air_Humidity = Environment.dht11value(Environment.DHT11Type.DHT11_humidity, DigitalPin.P1)
    Light = Environment.ReadLightIntensity(AnalogPin.P2)
    if (ESP8266_IoT.wifiState(true)) {
        basic.showIcon(IconNames.Yes)
        basic.pause(1000)
        basic.clearScreen()
        ESP8266_IoT.uploadData()
        basic.pause(1000)
    } else {
        basic.showIcon(IconNames.No)
    }
    
})
