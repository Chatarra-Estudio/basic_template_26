# basic_template_26
Godot Engine 3.5 video game template: we start with the car.

---------------------------------------------------------------------------------------------------------

# Truck Town

This is a demo implementing different types of trucks of
varying complexity using vehicle physics.

Controls:

- <kbd>Up Arrow</kbd>, <kbd>W</kbd>, <kbd>Gamepad Right Trigger</kbd>, <kbd>Gamepad A/Cross</kbd>: Accelerate
- <kbd>Down Arrow</kbd>, <kbd>S</kbd>, <kbd>Gamepad Left Trigger</kbd>, <kbd>Gamepad B/Circle</kbd> : Brake
- <kbd>Left Arrow</kbd>, <kbd>Gamepad Left Stick</kbd>: Steer left
- <kbd>Right Arrow</kbd>, <kbd>Gamepad Left Stick</kbd>: Steer right
- <kbd>U</kbd>, <kbd>Gamepad Select</kbd>, left-click speedometer: Change speedometer unit (m/s, km/h, mph)
- <kbd>C</kbd>, <kbd>Gamepad Y/Triangle</kbd>: Change camera (exterior, interior, top-down)
- <kbd>Escape</kbd>, <kbd>Gamepad D-Pad Up</kbd>: Go back to menu (press again to exit)

Language: GDScript

Renderer: Forward Plus

Check out this demo on the asset library: https://godotengine.org/asset-library/asset/524

## How does it work?

The base vehicle uses a
[`VehicleBody`](https://docs.godotengine.org/en/latest/classes/class_vehiclebody.html)
node. The trailer truck is tied together using a
[`ConeJointTwist`](https://docs.godotengine.org/en/latest/classes/class_conetwistjoint.html)
node, and the tow truck is tried together using a chain made of
[`RigidBody`](https://docs.godotengine.org/en/latest/classes/class_rigidbody.html)
nodes which are pinned together using
[`PinJoint`](https://docs.godotengine.org/en/latest/classes/class_pinjoint.html) nodes.

## Screenshots

<img src="https://raw.githubusercontent.com/godotengine/godot-demo-projects/ad2cdfebd46c1e50dac5b14134fbadbef15076e8/3d/truck_town/screenshots/truck_town.webp" width="700">

-------------------------------------------------------------------------------------------------------


El germen del proyecto de producir unos controles 3d surgió de un intento, no satisfactorio, para una Game Jam de pocas horas donde. El objetivo de nuestro proyecto era hacer unos controles básicos para un submarino. Finalmente tenemos una plantilla con joytick virtual t movimiento en 3d:

Plantilla proyecto editable original solo movimiento con joystick virtual, para que vaya bien en movil

https://github.com/Chatarra-Estudio/Virtual-Joytick-3d/tree/437d8bb987b4bb11bce31ce0715674a3b5abe02a
Juego:
https://josegarciamoreno.github.io/Chatarra-Estudio/landing2023/ferdi/3d.html

