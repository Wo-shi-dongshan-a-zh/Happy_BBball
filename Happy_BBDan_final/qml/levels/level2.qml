import QtQuick 2.0
import Felgo 3.0
import "../entities"
import "../scenes"

BasicGameScene {
    id: gamescene
    signal addDanzhus
    signal gameOver(string status)//游戏结束信号，status有victory和defeat
    property int sum_scores: box1.scores + box2.scores + box3.scores + box4.scores + box5.scores
                             + box6.scores + box7.scores + box8.scores + box9.scores
                             + box10.scores + box11.scores + box12.scores + box13.scores
                             + box14.scores + box15.scores + box16.scores + box17.scores
                             + box18.scores + box19.scores + box20.scores + box21.scores
                             + box22.scores + box23.scores + box24.scores + box25.scores
                             + box26.scores + box27.scores + box28.scores + box29.scores
                             + box30.scores
    property int dienumbers: box1.die + box2.die + box3.die + box4.die + box5.die
                             + box6.die + box7.die + box8.die + box9.die
                             + box10.die + box11.die+ box12.die + box13.die
                             + box14.die+ box15.die + box16.die + box17.die
                             + box18.die + box19.die + box20.die + box21.die
                             + box22.die + box23.die+ box24.die + box25.die
                             + box26.die+box27.die+box28.die+box29.die+box30.die
    property int allboxesnumbers: 30
    Boxes {
        id: box1
        x: 30
        y: 60
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        randomtimes: Math.random() * 20 + 1
        entityId: "box2"
    }
    Boxes {
        id: box2
        x: 80
        y: 60
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        randomtimes: Math.random() * 20 + 1
        entityId: "box3"
    }
    Boxes {
        id: box3
        x: 130
        y: 60
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        randomtimes: Math.random() * 20 + 1
        entityId: "box4"
    }

    Boxes {
        id: box4
        x: 180
        y: 60
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        randomtimes: Math.random() * 20 + 1
        entityId: "box5"
    }
    Boxes {
        id: box5
        x: 280
        y: 60
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        randomtimes: Math.random() * 20 + 1
        entityId: "box6"
    }
    Boxes {
        id: box6
        x: 330
        y: 60
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        randomtimes: Math.random() * 20 + 1
        entityId: "box7"
    }
    Boxes {
        id: box7
        x: 380
        y: 60
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        randomtimes: Math.random() * 20 + 1
        entityId: "box1"
    }
    Boxes {
        id: box8
        x: 430
        y: 60
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        randomtimes: Math.random() * 20 + 1
        entityId: "box8"
    }
    Boxes {
        id: box9
        x: 480
        y: 60
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        randomtimes: Math.random() * 20 + 1
        entityId: "box9"
    }
    //second line
    Boxes {
        id: box10
        x: 130
        y: 160
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        randomtimes: Math.random() * 20 + 1
        entityId: "box10"
    }
    Boxes {
        id: box11
        x: 180
        y: 160
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        randomtimes: Math.random() * 20 + 1
        entityId: "box11"
    }
    Boxes {
        id: box12
        x: 280
        y: 160
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        randomtimes: Math.random() * 20 + 1
        entityId: "box12"
    }

    Boxes {
        id: box13
        x: 330
        y: 160
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        randomtimes: Math.random() * 20 + 1
        entityId: "box13"
    }
    //third line
    Boxes {
        id: box14
        x: 80
        y: 260
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        randomtimes: Math.random() * 20 + 1
        entityId: "box14"
    }
    Boxes {
        id: box15
        x: 130
        y: 260
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        randomtimes: Math.random() * 20 + 1
        entityId: "box15"
    }
    Boxes {
        id: box16
        x: 180
        y: 260
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        randomtimes: Math.random() * 20 + 1
        entityId: "box16"
    }
    //third line
    Boxes {
        id: box17
        x: 280
        y: 260
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        randomtimes: Math.random() * 20 + 1
        entityId: "box17"
    }
    Boxes {
        id: box18
        x: 330
        y: 260
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        randomtimes: Math.random() * 20 + 1
        entityId: "box18"
    }
    Boxes {
        id: box19
        x: 380
        y: 260
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        randomtimes: Math.random() * 20 + 1
        entityId: "box19"
    }
    //fofth line
    Boxes {
        id: box20
        x: 130
        y: 360
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        randomtimes: Math.random() * 20 + 1
        entityId: "box20"
    }
    Boxes {
        id: box21
        x: 180
        y: 360
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        randomtimes: Math.random() * 20 + 1
        entityId: "box21"
    }
    Boxes {
        id: box22
        x: 280
        y: 360
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        randomtimes: Math.random() * 20 + 1
        entityId: "box22"
    }
    Boxes {
        id: box23
        x: 330
        y: 360

        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        randomtimes: Math.random() * 20 + 1
        entityId: "box23"
    }
    Boxes {
        id: box24
        x: 30
        y: 460
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        randomtimes: Math.random() * 20 + 1
        entityId: "box24"
    }

    Boxes {
        id: box25
        x: 80
        y: 460
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        randomtimes: Math.random() * 20 + 1
        entityId: "box25"
    }
    Boxes {
        id: box26
        x: 130
        y: 460
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        randomtimes: Math.random() * 20 + 1
        entityId: "box26"
    }

    Boxes {
        id: box27
        x: 380
        y: 460
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        randomtimes: Math.random() * 20 + 1
        entityId: "box27"
    }
    Boxes {
        id: box28
        x: 430
        y: 460
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        randomtimes: Math.random() * 20 + 1
        entityId: "box28"
    }
    Boxes {
        id: box29
        x: 330
        y: 560
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        randomtimes: Math.random() * 20 + 1
        entityId: "box29"
    }
    Boxes {
        id: box30
        x: 380
        y: 560
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        randomtimes: Math.random() * 20 + 1
        entityId: "box30"
    }
//    Danzhu {
//        x: gamescene.width / 2
//        y: 600
//        onAddDanzhu: addDanzhus()
//    }

    function resetgame() {
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

        bottomwall.activeballnumbers=bottomwall.ballnumbers
        bottomwall.isfirstbackball=true

        box1.reset_box_position_and_status(30, 60)
        box2.reset_box_position_and_status(80, 60)
        box3.reset_box_position_and_status(130, 60)
        box4.reset_box_position_and_status(180, 60)
        box5.reset_box_position_and_status(280, 60)
        box6.reset_box_position_and_status(330, 60)
        box7.reset_box_position_and_status(380, 60)
        box8.reset_box_position_and_status(430, 60)
        box9.reset_box_position_and_status(480, 60)
        box10.reset_box_position_and_status(130, 160)
        box11.reset_box_position_and_status(180, 160)
        box12.reset_box_position_and_status(280, 160)
        box13.reset_box_position_and_status(330, 160)
        box14.reset_box_position_and_status(80, 260)
        box15.reset_box_position_and_status(130, 260)
        box16.reset_box_position_and_status(180, 260)
        box17.reset_box_position_and_status(230, 260)
        box18.reset_box_position_and_status(280, 260)
        box19.reset_box_position_and_status(330, 260)
        box20.reset_box_position_and_status(380, 260)
        box21.reset_box_position_and_status(130, 360)
        box22.reset_box_position_and_status(180, 360)
        box23.reset_box_position_and_status(280, 360)
        box24.reset_box_position_and_status(330, 360)
        box25.reset_box_position_and_status(30, 460)
        box26.reset_box_position_and_status(80, 460)
        box27.reset_box_position_and_status(180, 460)
        box28.reset_box_position_and_status(430, 460)
        box29.reset_box_position_and_status(330, 560)
        box30.reset_box_position_and_status(380, 560)
    }

    function allboxesdropoff() {
        box1.drop_off_box()
        box2.drop_off_box()
        box3.drop_off_box()
        box4.drop_off_box()
        box5.drop_off_box()
        box6.drop_off_box()
        box7.drop_off_box()
        box8.drop_off_box()
        box9.drop_off_box()
        box10.drop_off_box()
        box11.drop_off_box()
        box12.drop_off_box()
        box13.drop_off_box()
        box14.drop_off_box()
        box15.drop_off_box()
        box16.drop_off_box()
        box17.drop_off_box()
        box18.drop_off_box()
        box19.drop_off_box()
        box20.drop_off_box()
        box21.drop_off_box()
        box22.drop_off_box()
        box23.drop_off_box()
        box24.drop_off_box()
        box25.drop_off_box()
        box26.drop_off_box()
        box27.drop_off_box()
        box28.drop_off_box()
        box29.drop_off_box()
        box30.drop_off_box()
    }
    function reset_all_balls_status(){
        firstball.reset_ball_status()
        secondball.reset_ball_status()
        thirdball.reset_ball_status()
        fourthball.reset_ball_status()
        fifthball.reset_ball_status()
        sixthball.reset_ball_status()
        seventhball.reset_ball_status()
        eighthball.reset_ball_status()
        ninethball.reset_ball_status()
        tenthball.reset_ball_status()
    }
}
