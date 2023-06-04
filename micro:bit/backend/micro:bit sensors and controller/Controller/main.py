def on_button_pressed_a():
    basic.show_leds("""
        . . # . .
                . # . . .
                # # # # #
                . # . . .
                . . # . .
    """)
    pins.analog_write_pin(AnalogPin.P1, 10)
input.on_button_pressed(Button.A, on_button_pressed_a)

def on_button_pressed_b():
    basic.show_leds("""
        . . # . .
                . . . # .
                # # # # #
                . . . # .
                . . # . .
    """)
    pins.analog_write_pin(AnalogPin.P1, 180)
input.on_button_pressed(Button.B, on_button_pressed_b)

def on_received_value(name, value):
    global Soil_Top, Soil_Bottom
    if name == "Soil":
        Soil_Top = value
    if name == "Soil Top":
        Soil_Bottom = value
radio.on_received_value(on_received_value)

Humid_Sum = 0
Soil_Bottom = 0
Soil_Top = 0
radio.set_group(1)

def on_forever():
    global Humid_Sum
    Humid_Sum = Soil_Bottom + Soil_Top
    basic.show_number(Humid_Sum)
    if Humid_Sum < 50:
        basic.show_leds("""
            . . . . .
                        . . . . .
                        . . . . .
                        . . . . .
                        # # # # #
        """)
        basic.show_leds("""
            . . . . .
                        . . . . .
                        . . . . .
                        # # # # #
                        # # # # #
        """)
        pins.analog_write_pin(AnalogPin.P1, 180)
    elif Humid_Sum < 75:
        basic.show_leds("""
            . . . . .
                        . . . . .
                        . . . . .
                        # # # # #
                        # # # # #
        """)
        basic.show_leds("""
            . . . . .
                        . . . . .
                        # # # # #
                        # # # # #
                        # # # # #
        """)
        pins.analog_write_pin(AnalogPin.P1, 90)
    elif Humid_Sum < 90:
        basic.show_leds("""
            . . . . .
                        . . . . .
                        # # # # #
                        # # # # #
                        # # # # #
        """)
        basic.show_leds("""
            . . . . .
                        # # # # #
                        # # # # #
                        # # # # #
                        # # # # #
        """)
        pins.analog_write_pin(AnalogPin.P1, 45)
    else:
        basic.show_leds("""
            # # # # #
                        # # # # #
                        # # # # #
                        # # # # #
                        # # # # #
        """)
        pins.analog_write_pin(AnalogPin.P1, 10)
basic.forever(on_forever)
