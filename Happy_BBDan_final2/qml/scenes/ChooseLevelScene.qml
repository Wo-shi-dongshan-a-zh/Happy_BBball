import QtQuick 2.0
import Felgo 3.0

Scene {
    id: chooselevelscene
    signal playwith(string levelfile)
    signal backClicked
    Rectangle {
        anchors.fill: parent
        color: "black"
    }
    Image {
        source: "../../assets/monster.png"
        width: 200
        height: 300
        anchors.right: chooselevelscene.right
        anchors.top: chooselevelscene.top
    }
    Image {
        id: logo_people
        height: chooselevelscene.height / 10
        width: chooselevelscene.width
        anchors.bottom: chooselevelscene.bottom
        source: "../../assets/roof.png"
    }
    Image {
        x: 40
        y: 40
        source: "../../assets/backBtn.png"
        width: 200
        height: 80
        MouseArea {
            anchors.fill: parent
            onClicked: backClicked()
        }
    }

    Grid {
        id: levels
        anchors.centerIn: parent
        columns: 4
        spacing: 88
        Rectangle {
            id: level1
            height: 50
            width: 50
            radius: 10
            Text {
                text: qsTr("1")
                anchors.centerIn: parent
                font.family: organo.name
                font.pixelSize: 30
            }
            MouseArea {
                anchors.fill: parent
                onClicked: playwith("level1.qml")
            }
        }
        Rectangle {
            id: level2
            height: 50
            width: 50
            radius: 10
            Text {
                text: qsTr("2")
                anchors.centerIn: parent
                font.family: organo.name
                font.pixelSize: 30
            }
            MouseArea {
                anchors.fill: parent
                onClicked: playwith("level2.qml")
            }
        }
        Rectangle {
            id: level3
            height: 50
            width: 50
            radius: 10
            Text {
                text: qsTr("3")
                anchors.centerIn: parent
                font.family: organo.name
                font.pixelSize: 30
            }
            MouseArea {
                anchors.fill: parent
                onClicked: playwith("level3.qml")
            }
        }
        Rectangle {
            id: level4
            height: 50
            width: 50
            radius: 10
            Text {
                text: qsTr("4")
                anchors.centerIn: parent
                font.family: organo.name
                font.pixelSize: 30
            }
            MouseArea {
                anchors.fill: parent
                onClicked: playwith("level4.qml")
            }
        }
        Rectangle {
            id: level5
            height: 50
            width: 50
            radius: 10
            Text {
                text: qsTr("5")
                anchors.centerIn: parent
                font.family: organo.name
                font.pixelSize: 30
            }
            MouseArea {
                anchors.fill: parent
                onClicked: playwith("level5.qml")
            }
        }
        Rectangle {
            id: level6
            height: 50
            width: 50
            radius: 10
            Text {
                text: qsTr("6")
                anchors.centerIn: parent
                font.family: organo.name
                font.pixelSize: 30
            }
            MouseArea {
                anchors.fill: parent
                onClicked: playwith("level6.qml")
            }
        }
        Rectangle {
            id: level7
            height: 50
            width: 50
            radius: 10
            Text {
                text: qsTr("7")
                anchors.centerIn: parent
                font.family: organo.name
                font.pixelSize: 30
            }
            MouseArea {
                anchors.fill: parent
                onClicked: playwith("level7.qml")
            }
        }
        Rectangle {
            id: level8
            height: 50
            width: 50
            radius: 10
            Text {
                text: qsTr("8")
                anchors.centerIn: parent
                font.family: organo.name
                font.pixelSize: 30
            }
            MouseArea {
                anchors.fill: parent
                onClicked: playwith("level8.qml")
            }
        }
        Rectangle {
            id: level9
            height: 50
            width: 50
            radius: 10
            Text {
                text: qsTr("9")
                anchors.centerIn: parent
                font.family: organo.name
                font.pixelSize: 30
            }
        }
        Rectangle {
            id: level10
            height: 50
            width: 50
            radius: 10
            Text {
                text: qsTr("10")
                anchors.centerIn: parent
                font.family: organo.name
                font.pixelSize: 30
            }
        }
        Rectangle {
            id: level11
            height: 50
            width: 50
            radius: 10
            Text {
                text: qsTr("11")
                anchors.centerIn: parent
                font.family: organo.name
                font.pixelSize: 30
            }
        }
        Rectangle {
            id: level12
            height: 50
            width: 50
            radius: 10
            Text {
                text: qsTr("12")
                anchors.centerIn: parent
                font.family: organo.name
                font.pixelSize: 30
            }
        }
    }
}
