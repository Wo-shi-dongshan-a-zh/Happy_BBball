import QtQuick 2.0
import Felgo 3.0
import "../entities"

Item {
    id: basicGamescene
    property double ballcurrentx: basicGamescene.width / 2 - 20
    property double ballcurrenty: basicGamescene.height - people.height / 2 - 15

    property alias people: people
    property alias bottomwall: bottomwall
    property alias firstball: firstball
    property alias secondball: secondball
    property alias thirdball: thirdball
    property alias fourthball: fourthball
    property alias fifthball: fifthball
    property alias sixthball: sixthball
    property alias seventhball: seventhball
    property alias eighthball: eighthball
    property alias ninethball: ninethball
    property alias tenthball: tenthball

    property alias firstball_mousearea:firstball.mousearea
    property alias secondball_mousearea:secondball.mousearea
    property alias thirdball_mousearea:thirdball.mousearea
    property alias fourthball_mousearea:fourthball.mousearea
    property alias fifthball_mousearea:fifthball.mousearea
    property alias sixthball_mousearea:sixthball.mousearea
    property alias seventhball_mousearea:seventhball.mousearea
    property alias eighthball_mousearea:eighthball.mousearea
    property alias ninethball_mousearea:ninethball.mousearea
    property alias tenthball_mousearea:tenthball.mousearea


    property double xspeedvector
    property double yspeedvector

    property double rotate_angle:0

    signal dropoffallboxes
    signal resetgame_enabled_false
    signal resetgame_enabled_true

    Ball {
        id: firstball
        entityId: "ball1"
        x: basicGamescene.width / 2 - 20
        y: basicGamescene.height - people.height / 2 - 15
        currentx: ballcurrentx
        xSpeedVector: xspeedvector
        ySpeedVector: yspeedvector
        visible: true
        onLaunchBall: {
            resetgame_enabled_false()
            collimationline.visible=false
            firstball.startgame(firstball.x-ballcurrentx,firstball.y-ballcurrenty)
            xspeedvector=(ballcurrentx-firstball.x)*firstball.speed
            yspeedvector=(ballcurrenty-firstball.y)*firstball.speed
            secondball.timer.start()
            thirdball.timer.start()
            fourthball.timer.start()
            fifthball.timer.start()
            sixthball.timer.start()
            seventhball.timer.start()
            eighthball.timer.start()
            ninethball.timer.start()
            tenthball.timer.start()
        }
        onPressedmouse: {
            angle=Math.atan2(ballcurrentx-firstball.x,ballcurrenty-firstball.y)*180/Math.PI
            if(angle>=0){
                rotate_angle=360-(angle-90)
            }else{
                rotate_angle=(-1)*angle+90
            }
            collimationline.x=firstball.x+10
            collimationline.y=firstball.y+5
            collimationline.visible=true

        }

    }
    Ball {
        //第二个球
        id: secondball
        entityId: "ball2"
        x:basicGamescene.width/2 -20
        y:basicGamescene.height-people.height/2 -15
        currentx: ballcurrentx
        xSpeedVector: xspeedvector
        ySpeedVector: yspeedvector
        timer.interval: 100
        onLaunchBall: {
            resetgame_enabled_false()
            collimationline.visible=false
            secondball.startgame(secondball.x-ballcurrentx,secondball.y-ballcurrenty)
            xspeedvector=(ballcurrentx-secondball.x)*secondball.speed
            yspeedvector=(ballcurrenty-secondball.y)*secondball.speed
            firstball.timer.start()
            thirdball.timer.start()
            fourthball.timer.start()
            fifthball.timer.start()
            sixthball.timer.start()
            seventhball.timer.start()
            eighthball.timer.start()
            ninethball.timer.start()
            tenthball.timer.start()
        }
        onPressedmouse: {
            angle=Math.atan2(ballcurrentx-secondball.x,ballcurrenty-secondball.y)*180/Math.PI//计算发球时的角度（这是基于正y轴的角度）
            if(angle>=0){
                rotate_angle=360-(angle-90)//把基于正y轴的角度转化为基于正x轴的角度
            }else{
                rotate_angle=(-1)*angle+90//把基于正y轴的角度转化为基于正x轴的角度
            }
            collimationline.x=secondball.x+10//计算瞄准线的x,y坐标
            collimationline.y=secondball.y+5
            collimationline.visible=true//设置瞄准线可见

        }
    }

    Ball {
        //第三个球
        id: thirdball
        entityId: "ball3"
        x: basicGamescene.width / 2 - 20
        y: basicGamescene.height - people.height / 2 - 15
        currentx: ballcurrentx
        xSpeedVector: xspeedvector
        ySpeedVector: yspeedvector
        timer.interval: 200
        onLaunchBall: {
            resetgame_enabled_false()
            collimationline.visible=false
            thirdball.startgame(thirdball.x-ballcurrentx,thirdball.y-ballcurrenty)
            xspeedvector=(ballcurrentx-thirdball.x)*thirdball.speed
            yspeedvector=(ballcurrenty-thirdball.y)*thirdball.speed
            firstball.timer.start()
            secondball.timer.start()
            fourthball.timer.start()
            fifthball.timer.start()
            sixthball.timer.start()
            seventhball.timer.start()
            eighthball.timer.start()
            ninethball.timer.start()
            tenthball.timer.start()
        }
        onPressedmouse: {
            angle=Math.atan2(ballcurrentx-thirdball.x,ballcurrenty-thirdball.y)*180/Math.PI
            if(angle>=0){
                rotate_angle=360-(angle-90)
            }else{
                rotate_angle=(-1)*angle+90
            }
            collimationline.x=thirdball.x+10
            collimationline.y=thirdball.y+5
            collimationline.visible=true

        }
    }


    Ball {
        //第四个球
        id: fourthball
        entityId: "ball4"
        x: basicGamescene.width / 2 - 20
        y: basicGamescene.height - people.height / 2 - 15
        currentx: ballcurrentx
        xSpeedVector: xspeedvector
        ySpeedVector: yspeedvector
        timer.interval: 300
        onLaunchBall: {
            resetgame_enabled_false()
            collimationline.visible=false
            fourthball.startgame(fourthball.x-ballcurrentx,fourthball.y-ballcurrenty)
            xspeedvector=(ballcurrentx-fourthball.x)*fourthball.speed
            yspeedvector=(ballcurrenty-fourthball.y)*fourthball.speed
            firstball.timer.start()
            secondball.timer.start()
            thirdball.timer.start()
            fifthball.timer.start()
            sixthball.timer.start()
            seventhball.timer.start()
            eighthball.timer.start()
            ninethball.timer.start()
            tenthball.timer.start()
        }
        onPressedmouse: {
            angle=Math.atan2(ballcurrentx-fourthball.x,ballcurrenty-fourthball.y)*180/Math.PI
            if(angle>=0){
                rotate_angle=360-(angle-90)
            }else{
                rotate_angle=(-1)*angle+90
            }
            collimationline.x=fourthball.x+10
            collimationline.y=fourthball.y+5
            collimationline.visible=true

        }
    }


    Ball {
        //第五个球
        id: fifthball
        entityId: "ball5"
        x: basicGamescene.width / 2 - 20
        y: basicGamescene.height - people.height / 2 - 15
        currentx: ballcurrentx
        xSpeedVector: xspeedvector
        ySpeedVector: yspeedvector
        timer.interval: 400
        onLaunchBall: {
            resetgame_enabled_false()
            collimationline.visible=false
            fifthball.startgame(fifthball.x-ballcurrentx,fifthball.y-ballcurrenty)
            xspeedvector=(ballcurrentx-fifthball.x)*fifthball.speed
            yspeedvector=(ballcurrenty-fifthball.y)*fifthball.speed
            firstball.timer.start()
            secondball.timer.start()
            thirdball.timer.start()
            fourthball.timer.start()
            sixthball.timer.start()
            seventhball.timer.start()
            eighthball.timer.start()
            ninethball.timer.start()
            tenthball.timer.start()
        }
        onPressedmouse: {
            angle=Math.atan2(ballcurrentx-fifthball.x,ballcurrenty-fifthball.y)*180/Math.PI
            if(angle>=0){
                rotate_angle=360-(angle-90)
            }else{
                rotate_angle=(-1)*angle+90
            }
            collimationline.x=fifthball.x+10
            collimationline.y=fifthball.y+5
            collimationline.visible=true

        }
    }


    Ball {
        id: sixthball
        entityId: "ball6"
        x: basicGamescene.width / 2 - 20
        y: basicGamescene.height - people.height / 2 - 15
        currentx: ballcurrentx
        xSpeedVector: xspeedvector
        ySpeedVector: yspeedvector
        timer.interval: 500
        onLaunchBall: {
            resetgame_enabled_false()
            collimationline.visible=false
            sixthball.startgame(sixthball.x-ballcurrentx,sixthball.y-ballcurrenty)
            xspeedvector=(ballcurrentx-sixthball.x)*sixthball.speed
            yspeedvector=(ballcurrenty-sixthball.y)*sixthball.speed
            firstball.timer.start()
            secondball.timer.start()
            thirdball.timer.start()
            fourthball.timer.start()
            fifthball.timer.start()
            seventhball.timer.start()
            eighthball.timer.start()
            ninethball.timer.start()
            tenthball.timer.start()
        }
        onPressedmouse: {
            angle=Math.atan2(ballcurrentx-sixthball.x,ballcurrenty-sixthball.y)*180/Math.PI
            if(angle>=0){
                rotate_angle=360-(angle-90)
            }else{
                rotate_angle=(-1)*angle+90
            }
            collimationline.x=sixthball.x+10
            collimationline.y=sixthball.y+5
            collimationline.visible=true

        }
    }

    Ball {
        //第七个球
        id: seventhball
        entityId: "ball7"
        x: basicGamescene.width / 2 - 20
        y: basicGamescene.height - people.height / 2 - 15
        currentx: ballcurrentx
        xSpeedVector: xspeedvector
        ySpeedVector: yspeedvector
        timer.interval: 600
        onLaunchBall: {
            resetgame_enabled_false()
            collimationline.visible=false
            seventhball.startgame(seventhball.x-ballcurrentx,seventhball.y-ballcurrenty)
            xspeedvector=(ballcurrentx-seventhball.x)*seventhball.speed
            yspeedvector=(ballcurrenty-seventhball.y)*seventhball.speed
            firstball.timer.start()
            secondball.timer.start()
            thirdball.timer.start()
            fourthball.timer.start()
            fifthball.timer.start()
            sixthball.timer.start()
            eighthball.timer.start()
            ninethball.timer.start()
            tenthball.timer.start()
        }
        onPressedmouse: {
            angle=Math.atan2(ballcurrentx-seventhball.x,ballcurrenty-seventhball.y)*180/Math.PI
            if(angle>=0){
                rotate_angle=360-(angle-90)
            }else{
                rotate_angle=(-1)*angle+90
            }
            collimationline.x=seventhball.x+10
            collimationline.y=seventhball.y+5
            collimationline.visible=true

        }
    }

    Ball {
        //第八个球
        id: eighthball
        entityId: "ball8"
        x: basicGamescene.width / 2 - 20
        y: basicGamescene.height - people.height / 2 - 15
        currentx: ballcurrentx
        xSpeedVector: xspeedvector
        ySpeedVector: yspeedvector
        timer.interval: 700
        onLaunchBall: {
            resetgame_enabled_false()
            collimationline.visible=false
            eighthball.startgame(eighthball.x-ballcurrentx,eighthball.y-ballcurrenty)
            xspeedvector=(ballcurrentx-eighthball.x)*eighthball.speed
            yspeedvector=(ballcurrenty-eighthball.y)*eighthball.speed
            firstball.timer.start()
            secondball.timer.start()
            thirdball.timer.start()
            fourthball.timer.start()
            fifthball.timer.start()
            sixthball.timer.start()
            seventhball.timer.start()
            ninethball.timer.start()
            tenthball.timer.start()
        }
        onPressedmouse: {
            angle=Math.atan2(ballcurrentx-eighthball.x,ballcurrenty-eighthball.y)*180/Math.PI
            if(angle>=0){
                rotate_angle=360-(angle-90)
            }else{
                rotate_angle=(-1)*angle+90
            }
            collimationline.x=eighthball.x+10
            collimationline.y=eighthball.y+5
            collimationline.visible=true

        }
    }

    Ball {
        //第九个球
        id: ninethball
        entityId: "ball9"
        x: basicGamescene.width / 2 - 20
        y: basicGamescene.height - people.height / 2 - 15
        currentx: ballcurrentx
        xSpeedVector: xspeedvector
        ySpeedVector: yspeedvector
        timer.interval: 800
        onLaunchBall: {
            resetgame_enabled_false()
            collimationline.visible=false
            ninethball.startgame(ninethball.x-ballcurrentx,ninethball.y-ballcurrenty)
            xspeedvector=(ballcurrentx-ninethball.x)*ninethball.speed
            yspeedvector=(ballcurrenty-ninethball.y)*ninethball.speed
            firstball.timer.start()
            secondball.timer.start()
            thirdball.timer.start()
            fourthball.timer.start()
            fifthball.timer.start()
            sixthball.timer.start()
            seventhball.timer.start()
            eighthball.timer.start()
            tenthball.timer.start()
        }
        onPressedmouse: {
            angle=Math.atan2(ballcurrentx-ninethball.x,ballcurrenty-ninethball.y)*180/Math.PI
            if(angle>=0){
                rotate_angle=360-(angle-90)
            }else{
                rotate_angle=(-1)*angle+90
            }
            collimationline.x=ninethball.x+10
            collimationline.y=ninethball.y+5
            collimationline.visible=true

        }
    }

    Ball {
        //第十个球
        id: tenthball
        entityId: "ball10"
        x: basicGamescene.width / 2 - 20
        y: basicGamescene.height - people.height / 2 - 15
        currentx: ballcurrentx
        xSpeedVector: xspeedvector
        ySpeedVector: yspeedvector
        timer.interval: 900
        onLaunchBall: {
            resetgame_enabled_false()
            collimationline.visible=false
            tenthball.startgame(tenthball.x-ballcurrentx,tenthball.y-ballcurrenty)
            xspeedvector=(ballcurrentx-tenthball.x)*tenthball.speed
            yspeedvector=(ballcurrenty-tenthball.y)*tenthball.speed
            firstball.timer.start()
            secondball.timer.start()
            thirdball.timer.start()
            fourthball.timer.start()
            fifthball.timer.start()
            sixthball.timer.start()
            seventhball.timer.start()
            eighthball.timer.start()
            ninethball.timer.start()
        }
        onPressedmouse: {
            angle=Math.atan2(ballcurrentx-tenthball.x,ballcurrenty-tenthball.y)*180/Math.PI
            if(angle>=0){
                rotate_angle=360-(angle-90)
            }else{
                rotate_angle=(-1)*angle+90
            }
            collimationline.x=tenthball.x+10
            collimationline.y=tenthball.y+5
            collimationline.visible=true

        }
    }


    People {
        id: people
        x: basicGamescene.width / 2
        y: basicGamescene.height - people.height
    }

    Boundary {
        //Bottom wall底部墙
        id:bottomwall
        entityId: "bottom"
        height: 10
        ballnumbers: 10
        activeballnumbers: 10
        anchors {
            bottom: basicGamescene.bottom
            left: basicGamescene.left
            right: basicGamescene.right
        }
        onFirstballback: {
            ballcurrentx = bottomwall.firstbackballx
            animateX.start()//重置人位置，有动画
        }

        onAllballsback: {
            set_all_balls_mousearea_true()//全部球回来后，设置鼠标区域可以操作球，这样就可以继续发射球
            dropoffallboxes()//全部球返回，则所有方块下移一行
            resetgame_enabled_true()
        }
    }
    Boundary {
        //Top wall顶部墙
        height: 10
        y: 40
        anchors {
            left: basicGamescene.left
            right: basicGamescene.right
        }
    }
    Boundary {
        //Left wall左部墙
        entityId: "left"
        width: 20
        anchors {
            top: basicGamescene.top
            left: basicGamescene.left
            bottom: basicGamescene.bottom
        }
    }
    Boundary {
        //Right wall右部墙
        width: 20
        anchors {
            bottom: basicGamescene.bottom
            top: basicGamescene.top
            right: basicGamescene.right
        }
    }

    NumberAnimation {
        id: animateX
        target: people
        property: "x"
        from: people.x
        to: ballcurrentx + firstball.width
        duration: 400
    }
    Rectangle {
        //白线，用于可视化游戏失败（方块碰到白线失败）
        y: 910
        color: "white"
        width: basicGamescene.width
        height: 5
        z: -1
    }
    Image {
        id: collimationline
        height: 10
        source: "../../assets/help_line.png"
        visible: false
        opacity: 0.7
        transform: Rotation{origin.x:x;origin.y:y+5;angle: rotate_angle}//angle绑定属性rotate_angle,用于实时改变瞄准线的角度
    }
    function set_all_balls_mousearea_true(){
        firstball_mousearea.enabled = true
        secondball_mousearea.enabled = true
        thirdball_mousearea.enabled = true
        fourthball_mousearea.enabled = true
        fifthball_mousearea.enabled = true
        sixthball_mousearea.enabled = true
        seventhball_mousearea.enabled = true
        eighthball_mousearea.enabled = true
        ninethball_mousearea.enabled = true
        tenthball_mousearea.enabled = true
    }
    function all_balltimer_stop(){
        firstball.timer.stop()
        secondball.timer.stop()
        thirdball.timer.stop()
        fourthball.timer.stop()
        fifthball.timer.stop()
        sixthball.timer.stop()
        seventhball.timer.stop()
        eighthball.timer.stop()
        ninethball.timer.stop()
        tenthball.timer.stop()
    }
}
