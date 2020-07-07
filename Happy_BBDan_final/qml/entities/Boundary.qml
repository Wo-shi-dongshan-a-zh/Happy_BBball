import QtQuick 2.0
import Felgo 3.0
import "../levels"

EntityBase {
    id: wall
    entityType: "boundary"
    signal allballsback
    signal firstballback
    property bool isfirstbackball: true
    property double firstbackballx

    property int ballnumbers
    property int activeballnumbers

    Rectangle {
        id: rectangle
        anchors.fill: parent
        opacity: 0
        color: "red"
    }
    BoxCollider {
        id: boxCollider
        bodyType: Body.Static
        anchors.fill: parent
        categories: Box.Category1
        collidesWith: Circle.Category1
        fixture.onBeginContact: {
            if(wall.entityId==="bottom"){
                 boundary_music.play()
                 activeballnumbers--
                var otherentity = other.getBody().target
                if(isfirstbackball){
                    firstbackballx=otherentity.x
                    otherentity.resetPosition(otherentity.x,890)
                    otherentity.circollider.sensor=true//球重置位置便不能发生碰撞，直到下一次发射才设置为可发生碰撞状态
                    otherentity.ballstatic=true//收球后设置状态为动态
                    otherentity.mousearea.enabled = false//第一个球落下，在其他球没落下时，不可再次发射
                    firstballback()
                    isfirstbackball=false
                }else{
                    otherentity.resetPosition(otherentity.x,890)
                    otherentity.firstbackballx = wall.firstbackballx
                    otherentity.circollider.sensor=true
                    otherentity.ballstatic=true//收球后设置状态为动态
                    otherentity.ball_animationX.start()//球移动位置（400毫秒）
                    otherentity.wait_ball_move.start()//等待球移动（400毫秒)，然后设置球不可见
                    otherentity.timer.interval=(ballnumbers-activeballnumbers-1)*100//计算下次发射球是计时器等待时间

                }
                if(activeballnumbers===0){
                    isfirstbackball=true
                    activeballnumbers=ballnumbers
                    allballsback()
                }
            }
        }
    }
    SoundEffect{
        id:boundary_music
        source: "../../assets/coin.wav"
        loops: 1
    }
}
