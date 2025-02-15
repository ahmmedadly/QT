
# Car Dashboard Infotainment System

This project is a **Car Dashboard Infotainment System** developed using the **Qt6 Framework**. It simulates a car dashboard with interactive features such as headlight control, turn signals, and a horn sound. The project also integrates the **Caps Lock LED** to reflect the headlight state, demonstrating hardware-software interaction.

## Features
- **Headlight Control**: Toggle the car's headlights on and off.
- **Turn Signals**: Control left and right turn signals with interactive icons.
- **Horn Sound**: Play a realistic horn sound with the click of a button.
- **Caps Lock LED Integration**: Simulate the Caps Lock LED to reflect the headlight state.

## Video
![Car Dashboard](Video/RunningVideo.mp4)  

## Installation
To run this project, follow these steps:

### Prerequisites
1. **Python 3.6 or later**: Ensure Python is installed on your system.
2. **PySide6**: Install the PySide6 library for Qt6 support.
3. **playsound**: Install the playsound library for sound playback.

### Installation Steps
1. Clone the repository:
   ```bash
   git clone https://github.com/ahmmedadly/QT.git
   cd QT/02-CarDashboard
   ```

2. Install the required Python libraries:
   ```bash
   pip install PySide6 playsound
   `

## Running the Project
1. Navigate to the project directory:
   ```bash
   cd QT/02-CarDashboard
   ```

2. Run the application:
   ```bash
   python3 main.py
   ```

3. Interact with the car dashboard:
   - Click the **Headlights** button to toggle the headlights.
   - Click the **Left Signal** or **Right Signal** buttons to activate the turn signals.
   - Click the **Honk** button to play the horn sound.

## Project Structure
```
02-CarDashboard/
├── main.py                # Python backend script
├── Main.qml               # QML frontend file
├── images/                # Folder for images
│   ├── carlightoff.PNG    # Car image with headlights off
│   ├── carlighton.PNG     # Car image with headlights on
│   ├── leftlight.PNG      # Left turn signal image
│   ├── rightlight.PNG     # Right turn signal image
├── sounds/                # Folder for sound files
│   └── horn.wav           # Horn sound file
```

## Acknowledgments
- **Eng. Youssef Nofal**, the head of the Embedded Systems track at ITI.
- **Eng. Anas Khamees**, my Qt mentor, for his guidance and support.

Feel free to explore the code, contribute, or provide feedback! 😊
```

--
