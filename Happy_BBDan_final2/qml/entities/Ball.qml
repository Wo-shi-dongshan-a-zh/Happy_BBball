import QtQuick 2.0
import Felgo 3.0
import "../levels"

EntityBase {
    id: ball
    entityType: "ball"
    height: 20
    width: 20
    visible: false

    property int speed: 8
    property int scores:0
    property double firstbackballx

    //各种别名
    property alias circollider: circollider
    property alias ball_animationX: ball_animationX
    property alias mousearea:mousearea
    property alias timer: timer
    property alias wait_ball_move:wait_ball_move


    property double currentx

    property double xSpeedVector
    property double ySpeedVector

    property var angle
    property var firstcurrentspeed
    property var secondcurrentspeed

    property int colliderleftbottom:1

    property bool ballstatic: true
    property bool reboundcolliderisbox

    signal launchBall
    signal pressedmouse


    Image {
        id: image
        anchors.fill: circollider
        source: "../../assets/ball.png"
    }
    CircleCollider {
        id: circollider
        categories: Circle.Category1
        collidesWith: Box.Category1 | Box.Category2
        fixture.restitution: 1
        fixture.friction: 0
        groupIndex: -1
        radius: width / 2
        bullet: true

        fixture.onBeginContact: {
            var otherentity = other.getBody().target
            if(otherentity.entityType==="box"){
                scores++
            }
       // 用于解决球一直弹的bug
            if(otherentity.entityType==="box"){
                reboundcolliderisbox=true
            }

            if(otherentity.entityId==="left"){
                if(colliderleftbottom===1){
                    firstcurrentspeed = ball.circollider.linearVelocity//获得第一次碰撞时的速度向量
                    // console.log(firstcurrentspeed)
                    colliderleftbottom++
                    reboundcolliderisbox=false
                }else if(colliderleftbottom===2&&reboundcolliderisbox===false){
                    secondcurrentspeed = ball.circollider.linearVelocity//获得第二次碰撞时的速度向量
                    //console.log(secondcurrentspeed)
                    if(firstcurrentspeed===secondcurrentspeed){
                        entityManager.createEntityFromUrlWithProperties(Qt.resolvedUrl("Barrier.qml"),{
                                                                            "x":300,
                                                                            "y":ball.y}
                                                                        )
                    }
                    colliderleftbottom--
                }
            }
        }
    }
    NumberAnimation{
        id:ball_animationX
        target: ball
        from:ball.x
        to:ball.firstbackballx
        duration: 400
        properties: "x"
    }
    Timer{
        id:timer
        running: false
        repeat: false
        onTriggered: {
            ball.circollider.sensor=false
            ball.visible=true
            ball.launchBallFollowFirstBall(xSpeedVector,ySpeedVector)
        }
    }
    MouseArea {
        id: mousearea
        anchors.fill: parent
        drag.target: ball
        drag.axis: Drag.XAndYAxis
        drag.minimumY: 890
        drag.maximumY: 925
        drag.maximumX: currentx + 20
        drag.minimumX: currentx - 20
        onPositionChanged: {
            pressedmouse()
        }

        onReleased: {
            ball.circollider.sensor=false
            launchBall()
        }
    }
    Timer{
        id:wait_ball_move
        interval: 400
        repeat: false
        running: false
        onTriggered: ball.visible=false
    }

    function startgame(currentxpos, currentypos) {
        ball.mousearea.enabled=false//发球后鼠标就不可操控球
        ball.ballstatic=false//发球后设置状态为动态
        circollider.sensor=false
        //console.log("xpos,ypos" + currentxpos + " " + currentypos) //xpos ,ypo is current locat vector
        // var currentLocalVector = circollider.body.toLocalPoint()
        var opposite_currentLocalVector = Qt.point(-currentxpos, -currentypos)

        //console.log("opposite_currentLocalVector: " + opposite_currentLocalVector)
        var forwardSpeedVector = Qt.point(
                    opposite_currentLocalVector.x * speed,
                    opposite_currentLocalVector.y * speed)

        //console.log("forwardSpeedVector: " + forwardSpeedVector)
        circollider.applyLinearImpulse(forwardSpeedVector,
                                       circollider.body.getWorldCenter())
    }
    function resetPosition(xpos, ypos) {
        x = xpos       
        y = ypos
        circollider.linearVelocity = Qt.point(0, 0)
        //console.log(x, y)
    }
    function launchBallFollowFirstBall(tox,toy) {
        ball.mousearea.enabled=false//发球后鼠标就不可操控球
        ball.ballstatic=false//发球后设置状态为动态
        circollider.applyLinearImpulse(Qt.point(tox,toy),
                                       circollider.body.getWorldCenter())
    }
    //function displaylinearVelocity(){
    // console.log("Left Boundary: "+circollider.linearVelocity)
    //}
    function reset_ball_status(){
        circollider.linearVelocity=Qt.point(0,0)
        circollider.sensor=true
    }
}
