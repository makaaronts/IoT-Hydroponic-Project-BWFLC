# IoT-Hydroponic-Project-BWFLC
Project Description: Shows and record the data of the hydroponic in BWFLC, Hong Kong.

Supervisor and Back-end Developer: Vincent, FENG Weiting (Teacher)

Front-end Developer: Aaron Mak (Student)

About the frontend:
- The app provides a view / a page to show all of the live data (e.g. soil humidity, air temperature, humidity etc).
- Charts to show the live data and the trend of the data for the users.
- Provides a couple of views to teach users more about the benefits of hydroponic and the plants suitable for hydroponic.
- Users can set up the notification function to remind them to check out the data whether some of the data is too low (e.g. soil humidity).

About the backend:
- Various sensors is used to detect the situation of environment and send the detected data to the central Micro:bit server.
- The server gives orders to controllers according to the determined rules. e.g. The server send a ON signal to the servo to water plants when the soil humidity is low.
- The server also sends collected data to cloud computing platform for data serialization.
- Serialized data can be read by the front-end application through the API of the cloud platform.

For those who are interested in this project
- This front-end application is only for iOS. We are preparing the Android version.
- You can pull the Water Agri BWFLC.xcodeproj, Water Agri BWFLC folders and IMG_A28F349C352B-1.jpeg to your XCode on your MacOS devices to check the preview of the application.
- To check the preview, Please open the project and select ContentView.
- Links of each components with Micro:bit are listed as below:
- Server: https://makecode.microbit.org/_Mo5809dWoM9C 
- Servo: https://makecode.microbit.org/_X9jArfJPYKKm 
- Sensor template: https://makecode.microbit.org/_Aj4fbvECdLRf 
- Don't hestitate to make a PR if you have any ideas or bug-fix to our project! :)
- And please leave a star to us if you like our project! (^_^)
- zips of the project components are provided in root directory and micro:bit folder if you have problems in pulling down the project from github.
