import sys
import subprocess
from PySide6.QtGui import QGuiApplication
from PySide6.QtQml import QQmlApplicationEngine
from PySide6.QtCore import QObject, Slot, Signal
from playsound import playsound  

class Backend(QObject):
    def __init__(self):
        super().__init__()
        self._headlightsOn = False
        self._leftSignalOn = False
        self._rightSignalOn = False

    @Slot()
    def toggleHeadlights(self):
        self._headlightsOn = not self._headlightsOn
        print("Headlights:", "On" if self._headlightsOn else "Off")
        self.headlightsToggled.emit(self._headlightsOn)

        # Toggle Caps Lock LED using the C program
        capslock_state = "1" if self._headlightsOn else "0"
        try:
            subprocess.run(["sudo", "./capslock", capslock_state], check=True)
        except Exception as e:
            print("Error toggling Caps Lock LED:", e)

    @Slot()
    def toggleLeftSignal(self):
        self._leftSignalOn = not self._leftSignalOn
        print("Left Signal:", "On" if self._leftSignalOn else "Off")
        self.leftSignalToggled.emit(self._leftSignalOn)

    @Slot()
    def toggleRightSignal(self):
        self._rightSignalOn = not self._rightSignalOn
        print("Right Signal:", "On" if self._rightSignalOn else "Off")
        self.rightSignalToggled.emit(self._rightSignalOn)

    @Slot()
    def playHornSound(self):
        try:
            playsound("sounds/horn.wav")  
            print("Honk sound played!")
        except Exception as e:
            print("Error playing sound:", e)

    # Define Signals
    headlightsToggled = Signal(bool)
    leftSignalToggled = Signal(bool)
    rightSignalToggled = Signal(bool)

if __name__ == "__main__":
    app = QGuiApplication(sys.argv)
    engine = QQmlApplicationEngine()

    backend = Backend()
    engine.rootContext().setContextProperty("backend", backend)

    engine.load("Main.qml")

    if not engine.rootObjects():
        sys.exit(-1)

    sys.exit(app.exec())

