import QtQuick 2.0
import "../scenes"
import "../entities"
BasicGameScene{
    id:endless

    property int sum_scores:scores
    property int randomx
    property int row_boxnumbers
    property int allboxnumbers: 0
    property var positionArray:[0,1,2,3,4,5,6,7,8,9,10,11]

    signal endlessGameOver()//游戏结束信号

    function initialize(){//第一行出现方块，相当于初始化
         row_boxnumbers = Math.random()*12+1
         for(var i=1;i<=row_boxnumbers;i++){
             addBoxFromUrl()
         }
         positionArray=[0,1,2,3,4,5,6,7,8,9,10,11]
    }

    function addBoxFromUrl(){//增加方块从实体类
        allboxnumbers++
        randomx = Math.random()*positionArray.length//随机的位置系数
        var newproperties = {
            x:20+positionArray[randomx]*50,
            y:60,
            randomtimes: Math.random() * 10 + 1
        }//
        positionArray.splice(randomx,1)//删除数组中用过的位置系数，防止重复
        var boxid = entityManager.createEntityFromUrlWithProperties(//不能自定义entityid
                          Qt.resolvedUrl("../entities/Boxes.qml"), newproperties)

    }

    function allboxesdropoff(){//使方块全部向下移动
        var boxes = entityManager.getEntityArrayByType("box")
        for(var i=0;i<boxes.length;i++){
            boxes[i].drop_off_box()
            if(boxes[i].y+100>=910 && boxes[i].visible===true){
                endlessGameOver()
                var entity = ["box"]
                entityManager.removeEntitiesByFilter(entity)
                return
            }
        }
        initialize()//增加新的一行（第一行）

    }
    function resetgame(){
        var entity = ["box"]
        entityManager.removeEntitiesByFilter(entity)

        ballcurrentx = gamescene.width / 2 - 20
        ballcurrenty = gamescene.height - people.height / 2 - 15

        people.x = gamescene.width / 2
        people.y = gamescene.height - people.height

        firstball.resetPosition(gamescene.width / 2 - 20,
                                gamescene.height - people.height / 2 - 15)
        secondball.resetPosition(gamescene.width / 2 - 20,
                                 gamescene.height - people.height / 2 - 15)
        thirdball.resetPosition(gamescene.width / 2 - 20,
                                gamescene.height - people.height / 2 - 15)
        fourthball.resetPosition(gamescene.width / 2 - 20,
                                 gamescene.height - people.height / 2 - 15)
        fifthball.resetPosition(gamescene.width / 2 - 20,
                                gamescene.height - people.height / 2 - 15)
        sixthball.resetPosition(gamescene.width / 2 - 20,
                                gamescene.height - people.height / 2 - 15)
        seventhball.resetPosition(gamescene.width / 2 - 20,
                                  gamescene.height - people.height / 2 - 15)
        eighthball.resetPosition(gamescene.width / 2 - 20,
                                 gamescene.height - people.height / 2 - 15)
        ninethball.resetPosition(gamescene.width / 2 - 20,
                                 gamescene.height - people.height / 2 - 15)
        tenthball.resetPosition(gamescene.width / 2 - 20,
                                gamescene.height - people.height / 2 - 15)

        bottomwall.activeballnumbers=bottomwall.ballnumbers
        bottomwall.isfirstbackball=true

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

        reset_all_balls_scores()

        initialize()
    }
    function destroy_boxes(){
        var entity = ["box"]
        entityManager.removeEntitiesByFilter(entity)
    }
}
