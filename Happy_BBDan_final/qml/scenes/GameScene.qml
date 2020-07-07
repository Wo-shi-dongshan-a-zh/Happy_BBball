import QtQuick 2.0
import Felgo 3.0
import "../entities"
import ".."

Scene {
    id: gamescene

    property bool isnotloaded: true //判断是否加载


    //保存想进入的游戏关卡的qml文件名
    property string activeLevelFileName

    property alias loader: loader

    //back select levles user interface
    signal backSelectUI

    PhysicsWorld {
        id: world
        updatesPerSecondForPhysics: 60
        //debugDrawVisible: true
    }
    //得分框
    Rectangle {
        x: gamescene.width / 2 - width / 2
        y: 0
        width: 250
        height: 50
        color: "red"
        opacity: 0.5
        Text {
            text: isnotloaded ? qsTr("Scores: 0") : qsTr(
                                 "Scores: ") + loader.item.sum_scores
            anchors.centerIn: parent
            font.family: square.name
            font.pixelSize: 32
        }
    }//得分框

    Loader {//加载关卡
        id: loader
        source: "../levels/" + activeLevelFileName
        onLoaded: {
            isnotloaded = false
            item.width = gamescene.width
            item.height = gamescene.height
            //console.log("Gamescene:", gamescene.width)
        }
    }//加载关卡

    Connections {//接受关卡中的信号
        target: loader.item
        onAddDanzhus: addball()
        onDropoffallboxes: loader.item.allboxesdropoff()
        onGameOver: {
            loader.item.reset_all_balls_status()
            loader.item.all_balltimer_stop()
            backselectlevelUIButton.enabled = false
            resetgameButton.enabled = false
            setmouseareafalse.start()
            if(status==="defeat"){
                gameoverUI.gamevectory=false
            }else{
                gameoverUI.gamevectory=true
                vectory_wow.play()
                vectory_applause_timer.start()
            }
            gameoverUI.visible = true
        }
        onResetgame_enabled_false:{
            resetgameButton.enabled= false
        }
        onResetgame_enabled_true:{
            resetgameButton.enabled=true
        }
    }//接受关卡中的信号


    //退出按钮
    GameButton {
        id: backselectlevelUIButton
        height: 50
        width: 100
        Text {
            text: qsTr("Quit")
            font.pixelSize: 30
            font.family: square.name
            color: "lightblue"
            anchors.centerIn: parent
        }
        onClicked: {
            isQuitUI.visible = true
            backselectlevelUIButton.enabled = false
            resetgameButton.enabled = false
            set_all_balls_mousearea_false()
        }
    }//退出按钮


    Rectangle {
        //退出确认界面
        id: isQuitUI
        width: 350
        height: 140
        visible: false
        color: "lightblue"
        anchors.centerIn: parent
        Rectangle {
            color: "black"
            width: 330
            height: 120
            anchors.centerIn: parent
            Text {
                text: qsTr("Are you sure quit the game ?")
                font.pixelSize: 18
                font.family: organo.name
                anchors.horizontalCenter: parent.horizontalCenter
                y: 20
                color: "lightblue"
            }
        }

        GameButton {//退出确认按钮
            id: quit_yes
            x: 50
            y: 70
            width: 100
            height: 50
            Text {
                text: qsTr("Yes")
                font.family: square.name
                color: "lightblue"
                anchors.centerIn: parent
                font.pixelSize: 10
            }
            onClicked: {
                isQuitUI.visible = false
                backselectlevelUIButton.enabled = true
                resetgameButton.enabled = true
                backSelectUI()
            }
        }
        GameButton {//退出取消按钮
            id: quit_no
            x: 200
            y: 70
            width: 100
            height: 50
            Text {
                text: qsTr("No")
                font.family: square.name
                color: "lightblue"
                anchors.centerIn: parent
                font.pixelSize: 10
            }
            onClicked: {
                isQuitUI.visible = false
                backselectlevelUIButton.enabled = true
                resetgameButton.enabled = true
                set_all_balls_mousearea_true()
            }
        }
    } //退出确认界面

    //重置游戏按钮
    GameButton {
        id: resetgameButton
        height: 50
        width: 100
        anchors.right: gamescene.right
        Text {
            text: qsTr("Reset")
            font.pixelSize: 30
            font.family: square.name
            color: "lightblue"
            anchors.centerIn: parent
        }
        onClicked: {
            isResetGameUI.visible = true
            backselectlevelUIButton.enabled = false
            resetgameButton.enabled = false
            set_all_balls_mousearea_false()
        }
    }

    Rectangle {
        //重置游戏确认界面
        id: isResetGameUI
        width: 350
        height: 140
        visible: false
        color: "lightblue"
        anchors.centerIn: parent
        Rectangle {
            color: "black"
            width: 330
            height: 120
            anchors.centerIn: parent
            Text {
                text: qsTr("Are you sure reset the game ?")
                font.pixelSize: 18
                font.family: organo.name
                anchors.horizontalCenter: parent.horizontalCenter
                y: 20
                color: "lightblue"
            }
        }

        GameButton {//重置游戏确认按钮

            id: reset_yes
            x: 50
            y: 70
            width: 100
            height: 50
            Text {
                text: qsTr("Yes")
                font.family: square.name
                color: "lightblue"
                anchors.centerIn: parent
                font.pixelSize: 10
            }
            onClicked: {
                isResetGameUI.visible = false
                backselectlevelUIButton.enabled = true
                resetgameButton.enabled = true
                loader.item.resetgame()
            }
        }
        GameButton {//重置游戏取消按钮
            id: reset_no
            x: 200
            y: 70
            width: 100
            height: 50
            Text {
                text: qsTr("No")
                font.family: square.name
                color: "lightblue"
                anchors.centerIn: parent
                font.pixelSize: 10
            }
            onClicked: {
                isResetGameUI.visible = false
                backselectlevelUIButton.enabled = true
                resetgameButton.enabled = true
                set_all_balls_mousearea_true()
            }
        }
    } //重置游戏界面

    //游戏结束结算界面
    Rectangle {
        id: gameoverUI
        width: 400
        height: 600
        anchors.centerIn: parent
        visible: false
        color: "lightblue"
        property bool gamevectory
        Rectangle {
            //背景
            width: 380
            height: 580
            anchors.centerIn: parent
            color: "black"
            Image {
                source: "../../assets/ball_45.png"
                height: 100
                width: 100
            }
            Image {
                anchors.bottom: parent.bottom
                width: parent.width
                height: 60
                source: "../../assets/roof.png"
            }
        }
        Text {//游戏失败显示的mp3提示
            anchors.horizontalCenter: parent.horizontalCenter
            y: 120
            text: qsTr("It's a pity,you failed....")
            color: "red"
            font.pixelSize: 25
            font.family: organo.name
            visible: !parent.gamevectory
        }
        Text {//游戏胜利显示的提示
            anchors.horizontalCenter: parent.horizontalCenter
            y: 120
            text: qsTr("Congratulations!")
            color: "red"
            font.pixelSize: 28
            font.family: organo.name
            visible:parent.gamevectory
        }
        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            y: 180
            text: qsTr("Your final score")
            color: "red"
            font.pixelSize: 25
            font.family: organo.name
        }
        Text {
            text: isnotloaded ? 0 : loader.item.sum_scores
            anchors.horizontalCenter: parent.horizontalCenter
            y: 210
            color: "red"
            font.pixelSize: 40
            font.family: square.name
        }
        GameButton {
            //重玩按钮
            id: replaylevel
            Text {
                text: qsTr("Play Game again")
                font.family: square.name
                anchors.centerIn: parent
                color: "lightblue"
            }
            x: 100
            y: 280
            height: 50
            width: 200
            onClicked: {
                gameoverUI.visible = false
                loader.item.resetgame()
                backselectlevelUIButton.enabled = true
                resetgameButton.enabled = true
            }
        }
        GameButton {
            //退出按钮
            id: backtoselectUI
            Text {
                text: qsTr("Quit")
                font.family: square.name
                anchors.centerIn: parent
                color: "lightblue"
            }
            x: 100
            y: 350
            height: 50
            width: 200
            onClicked: {
                gameoverUI.visible = false
                backSelectUI()
                backselectlevelUIButton.enabled = true
                resetgameButton.enabled = true
            }
        }
    } //游戏结算界面
    BackgroundMusic{
        id:vectory_applause
        source:"../../assets/applause.wav"
        loops: 1
        autoPlay: false
        autoLoad: false
    }
    BackgroundMusic{
        id:vectory_wow
        source: "../../assets/wow.wav"
        loops: 1
        autoPlay: false
        autoLoad: false
    }
    Timer{
        id:vectory_applause_timer
        interval: 200
        running: false
        repeat: false
        onTriggered: {
            vectory_applause.play()
        }
    }
    Timer{
        id:setmouseareafalse
        interval: 400
        running: false
        repeat: false
        onTriggered: {
             set_all_balls_mousearea_false()
        }
    }

    function gamefinish() {
        nextlevel.visible = true
    }
    function setLevel(fileName) {
        activeLevelFileName = fileName
    }
//    function addball() {
//        var newproperties = {
//            "x": 300,
//            "y": 885
//        }
//        entityManager.createEntityFromComponentWithProperties(
//                    Qt.resolvedUrl("../entities/Ball"), newproperties)
//        entityManager.getLastAddedEntity().launchBallFollowFirstBall()
//    }
    function set_all_balls_mousearea_false(){
        loader.item.firstball_mousearea.enabled = false
        loader.item.secondball_mousearea.enabled = false
        loader.item.thirdball_mousearea.enabled = false
        loader.item.fourthball_mousearea.enabled = false
        loader.item.fifthball_mousearea.enabled = false
        loader.item.sixthball_mousearea.enabled = false
        loader.item.seventhball_mousearea.enabled = false
        loader.item.eighthball_mousearea.enabled = false
        loader.item.ninethball_mousearea.enabled = false
        loader.item.tenthball_mousearea.enabled = false
    }
    function set_all_balls_mousearea_true(){
        loader.item.firstball_mousearea.enabled = true
        loader.item.secondball_mousearea.enabled = true
        loader.item.thirdball_mousearea.enabled = true
        loader.item.fourthball_mousearea.enabled = true
        loader.item.fifthball_mousearea.enabled = true
        loader.item.sixthball_mousearea.enabled = true
        loader.item.seventhball_mousearea.enabled = true
        loader.item.eighthball_mousearea.enabled = true
        loader.item.ninethball_mousearea.enabled = true
        loader.item.tenthball_mousearea.enabled = true
    }

}
