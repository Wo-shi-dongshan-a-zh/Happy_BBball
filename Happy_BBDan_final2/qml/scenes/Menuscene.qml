import QtQuick 2.0
import Felgo 3.0
import ".."

Scene {
    id: menuscene
    signal playgame
    signal help

    property string backgroundmusicState: "open"
    property alias backgroundMusic: backgroundmusic
    Rectangle {
        color: "black"
        anchors.fill: parent
    }

    Image {
        id: soundbutton
        x: 20
        y: 10
        height: 40
        width: 40
        source: "../../assets/sound_button.png"
        MouseArea {
            anchors.fill: parent
            onClicked: {
                if (backgroundmusicState == "open") {
                    soundbutton.source = "../../assets/no_sound_button"
                    backgroundmusic.stop()
                    backgroundmusicState = "close"
                } else {
                    soundbutton.source = "../../assets/sound_button"
                    backgroundmusic.play()
                    backgroundmusicState = "open"
                }
            }
        }
    }
    Image {
        id: helpbutton
        x: 80
        y: 10
        height: 40
        width: 40
        source: "../../assets/ball_0.png"
        MouseArea {
            anchors.fill: parent
            onClicked: {
                helpbutton.scale = 1.0
            }
            onPressed: {
                helpbutton.scale = 0.85
            }
            onReleased: {
                helpbutton.scale = 0.85
                help()
            }
        }
    }
    Image {
        id: logo_bb_ball
        y: 65
        height: menuscene.height / 4
        width: menuscene.width
        source: "../../assets/wechat.png"
    }
    BackgroundMusic {
        id: backgroundmusic
        source: "../../assets/intro.mp3"
    }
    Rectangle {
        id: start
        color: "purple"
        anchors.centerIn: parent
        width: 350
        height: 80
        radius: 30
        Text {
            text: qsTr("Start game")
            anchors.centerIn: parent
            font.family: organo.name
            font.pixelSize: 40
        }
        MouseArea {
            anchors.fill: parent
            onPressed: {
                start.scale = 0.85
            }
            onReleased: {
                start.scale = 1.0
                playgame()
            }
        }
    }

    Image {
        id: logo_people
        height: menuscene.height / 10
        width: menuscene.width
        anchors.bottom: menuscene.bottom
        source: "../../assets/roof.png"
    }
}
