import QtQuick

Window {
    width: 600
    height: 150
    visible: true
    title: "Colored Panels"
    color: "white"

    // Hello Panel
    Rectangle {
        x: 10
        y: 25
        width: 100
        height: 100
        color: "red"
        border.color: "blue"
        border.width: 3
        radius: 10

        Text {
            anchors.centerIn: parent
            text: "Hello"
            font.bold: true
            font.pixelSize: 14
            color: "black"
        }
    }

    // World Panel
    Rectangle {
        x: 120  // 10 + 100 + 10 spacing
        y: 25
        width: 100
        height: 100
        color: "green"
        border.color: "gray"
        border.width: 3
        radius: 10

        Text {
            anchors.centerIn: parent
            text: "World"
            font.bold: true
            font.pixelSize: 14
            color: "black"
        }
    }

    // ! Panel
    Rectangle {
        x: 230  // 120 + 100 + 10 spacing
        y: 25
        width: 100
        height: 100
        color: "blue"
        border.color: "yellow"
        border.width: 3
        radius: 10

        Text {
            anchors.centerIn: parent
            text: "!"
            font.bold: true
            font.pixelSize: 14
            color: "black"
        }
    }

    // AHMED Panel
    Rectangle {
        x: 340  // 230 + 100 + 10 spacing
        y: 25
        width: 100
        height: 100
        color: "purple"
        border.color: "gray"
        border.width: 3
        radius: 10

        Text {
            anchors.centerIn: parent
            text: "AHMED"
            font.bold: true
            font.pixelSize: 14
            color: "black"
        }
    }

    // ADLY Panel
    Rectangle {
        x: 450  // 340 + 100 + 10 spacing
        y: 25
        width: 100
        height: 100
        color: "pink"
        border.color: "black"
        border.width: 3
        radius: 10

        Text {
            anchors.centerIn: parent
            text: "ADLY"
            font.bold: true
            font.pixelSize: 14
            color: "black"
        }
    }
}
