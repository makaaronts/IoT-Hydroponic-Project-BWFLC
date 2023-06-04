radio.setGroup(1)
basic.forever(function () {
    basic.showNumber(Environment.ReadSoilHumidity(AnalogPin.P1))
    radio.sendValue("Soil", Environment.ReadSoilHumidity(AnalogPin.P1))
})
