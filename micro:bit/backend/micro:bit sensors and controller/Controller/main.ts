input.onButtonPressed(Button.A, function on_button_pressed_a() {
    basic.showLeds(`
        . . # . .
                . # . . .
                # # # # #
                . # . . .
                . . # . .
    `)
    pins.analogWritePin(AnalogPin.P1, 10)
})
input.onButtonPressed(Button.B, function on_button_pressed_b() {
    basic.showLeds(`
        . . # . .
                . . . # .
                # # # # #
                . . . # .
                . . # . .
    `)
    pins.analogWritePin(AnalogPin.P1, 180)
})
radio.onReceivedValue(function on_received_value(name: string, value: number) {
    
    if (name == "Soil") {
        Soil_Top = value
    }
    
    if (name == "Soil Top") {
        Soil_Bottom = value
    }
    
})
let Humid_Sum = 0
let Soil_Bottom = 0
let Soil_Top = 0
radio.setGroup(1)
basic.forever(function on_forever() {
    
    Humid_Sum = Soil_Bottom + Soil_Top
    basic.showNumber(Humid_Sum)
    if (Humid_Sum < 50) {
        basic.showLeds(`
            . . . . .
                        . . . . .
                        . . . . .
                        . . . . .
                        # # # # #
        `)
        basic.showLeds(`
            . . . . .
                        . . . . .
                        . . . . .
                        # # # # #
                        # # # # #
        `)
        pins.analogWritePin(AnalogPin.P1, 180)
    } else if (Humid_Sum < 75) {
        basic.showLeds(`
            . . . . .
                        . . . . .
                        . . . . .
                        # # # # #
                        # # # # #
        `)
        basic.showLeds(`
            . . . . .
                        . . . . .
                        # # # # #
                        # # # # #
                        # # # # #
        `)
        pins.analogWritePin(AnalogPin.P1, 90)
    } else if (Humid_Sum < 90) {
        basic.showLeds(`
            . . . . .
                        . . . . .
                        # # # # #
                        # # # # #
                        # # # # #
        `)
        basic.showLeds(`
            . . . . .
                        # # # # #
                        # # # # #
                        # # # # #
                        # # # # #
        `)
        pins.analogWritePin(AnalogPin.P1, 45)
    } else {
        basic.showLeds(`
            # # # # #
                        # # # # #
                        # # # # #
                        # # # # #
                        # # # # #
        `)
        pins.analogWritePin(AnalogPin.P1, 10)
    }
    
})
