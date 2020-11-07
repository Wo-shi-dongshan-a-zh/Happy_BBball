import QtQuick 2.0
import Felgo 3.0

Scene {
    id: helpscene
    signal back
    GameButton {
        id: backbutton
        height: 40
        width: 100

        Text {
            text: qsTr("Back")
            font.family: organo.name
            anchors.centerIn: parent
            font.pixelSize: 22
            color: "lightblue"
        }
        onClicked: back()
    }

    Image {
        width: helpscene.width
        height: helpscene.height - 40
        anchors.bottom: helpscene.bottom
        source: "../../assets/tutorial.png"
    }
}
