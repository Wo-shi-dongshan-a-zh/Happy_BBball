import QtQuick 2.0
import QtQuick 2.0
import Felgo 3.0

Scene{
    id:modulescene

    signal traditionalModelClicked
    signal endlessModelClicked
    signal back

    Rectangle{
        id:backgroundcolor
        anchors.fill: parent
        color: "black"
    }
    Image {
        id: logo_bb_ball
        y: 65
        height: menuscene.height / 4
        width: menuscene.width
        source: "../../assets/wechat.png"
    }
    Rectangle{
        id:tradition_model
        radius: 20
        width:300
        height:80
        anchors.horizontalCenter: parent.horizontalCenter
        color: "purple"
        y:400
        Text {
            text: qsTr("Tradition Model")
            font.pixelSize: 22
            font.family:square.name
            anchors.centerIn: parent
        }
        MouseArea{
            anchors.fill: parent
            onPressed: {
                tradition_model.scale=0.85
            }
            onReleased: {
                tradition_model.scale=1.0
                traditionalModelClicked()
            }
        }
    }
    Rectangle{
        id:endless_model
        radius: 20
        width:300
        height:80
        anchors.horizontalCenter: parent.horizontalCenter
        color: "purple"
        y:580
        Text {
            text: qsTr("Endless Model")
            font.pixelSize: 22
            font.family:square.name
            anchors.centerIn: parent
        }
        MouseArea{
            anchors.fill: parent
            onPressed: {
                endless_model.scale=0.85
            }
            onReleased: {
                endless_model.scale=1.0
                endlessModelClicked()
            }
        }
    }
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
}
