import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15

ApplicationWindow {
    visibility: Window.FullScreen
    title: "Car Dashboard"

    Rectangle {
        width: parent.width
        height: parent.height
        color: "black"

        // Car Image (Headlights Off by Default)
        Image {
            id: carImage
            source: "images/carlightoff.png"  // Path to car with headlights off
            width: parent.width
            height: parent.height
            anchors.centerIn: parent

            // MouseArea to Detect Touch
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    backend.toggleHeadlights()  // Toggle headlights when touched
                }
            }
        }

        // Left Turn Signal
        Image {
            id: leftSignal
            source: "images/leftlight.png"  // Path to left turn signal image
            width: parent.width
            height: parent.height
            anchors.centerIn: parent
            visible: false  // Initially invisible
        }

        // Right Turn Signal
        Image {
            id: rightSignal
            source: "images/rightlight.png"  // Path to right turn signal image
            width: parent.width
            height: parent.height
            anchors.centerIn: parent

            visible: false  // Initially invisible
        }

        // Buttons Container
        Row {
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: 20

            Button {
                text: "Headlights"
                font.bold: true
                onClicked: backend.toggleHeadlights()
            }

            Button {
                text: "Left Signal"
                font.bold: true
                onClicked: backend.toggleLeftSignal()
            }

            Button {
                text: "Right Signal"
                font.bold: true
                onClicked: backend.toggleRightSignal()
            }

            Button {
                text: "Honk"
                font.bold: true
                onClicked: backend.playHornSound()
            }
        }

        // Connect Signals to UI
        Connections {
            target: backend
            function onHeadlightsToggled(on) {
                carImage.source = on ? "images/carlighton.png" : "images/carlightoff.png";
            }

            function onLeftSignalToggled(on) {
                leftSignal.visible = on;
            }

            function onRightSignalToggled(on) {
                rightSignal.visible = on;
            }
        }
    }
}
