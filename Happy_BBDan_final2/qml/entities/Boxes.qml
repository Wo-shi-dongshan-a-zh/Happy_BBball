import QtQuick 2.0
import Felgo 3.0

import "../levels"

EntityBase {
    id: box
    height: 50
    width: 50
    entityType: "box"
    poolingEnabled: true

    property int randomtimes
    property int scores: 0//计分
    property int die:0//记录此方块是否被摧毁，摧毁则设置die为1,用于判定游戏结束

    property alias color: rectangle.color

    signal gamefailed
    signal boxdie

    Rectangle {
        id: rectangle
        color: Qt.rgba(Math.random(), Math.random(), Math.random(), 1)
        anchors.fill: parent
    }
    Rectangle {
        id: centerRectangle
        color: "black"
        height: 42
        width: 42
        anchors.centerIn: rectangle
    }

    FontLoader {
        id: square
        source: "../../assets/Square.ttf"
    }

    Text {
        text: randomtimes
        anchors.centerIn: centerRectangle
        font.family: square.name
        font.pixelSize: 20
        color: rectangle.color
    }


    /*SoundEffect{
        id:collidersound
        source:
    }*/
    BoxCollider {
        id: boxCollider
        bodyType: Body.Static
        anchors.fill: parent
        categories: Box.Category2
        collidesWith: Circle.Category1
        friction: 0
        fixture.onBeginContact: {
            randomtimes--
            scores++
            soundeffect.play()
            if (randomtimes == 0) {
                die=1
                boxdie()
                //removeEntity()
                box.visible = false
            } else {
                rectangle.color = Qt.rgba(Math.random(), Math.random(),
                                          Math.random(), 1)
            }
        }
    }
    NumberAnimation {
        id: boxAnimation
        target: box
        properties: "y"
        from: box.y
        to: box.y +50
        duration: 400
    }

    function drop_off_box() {
        boxAnimation.start() //每次向下移动50个单位
        if (box.y +100>= 910&&box.visible===true) {//可见最后一排碰到白线，游戏失败
            gamefailed()
        }
    }
    function reset_box_position_and_status(xpos,ypos){
        box.color = Qt.rgba(Math.random(), Math.random(), Math.random(), 1)
        box.randomtimes = Math.random() * 20 + 1
        box.visible = true
        box.scores = 0
        box.die=0
        box.x=xpos
        box.y=ypos
    }
    SoundEffect{
        id:soundeffect
        source: "../../assets/coin.wav"
        loops: 1
    }
}
