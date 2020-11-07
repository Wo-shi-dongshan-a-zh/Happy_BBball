import QtQuick 2.0
import Felgo 3.0
import "../entities"
import "../scenes"

BasicGameScene {
    id: gamescene
  //  signal addDanzhus
    signal gameOver(string status)//游戏结束信号，status有victory和defeat
    property int sum_scores: +box2.scores + box3.scores + box4.scores + box5.scores +box6.scores
                             + box7.scores + box1.scores + box8.scores + box9.scores
                             + box10.scores + box11.scores + box12.scores + box13.scores
                             + box14.scores + box15.scores + box16.scores + box17.scores
                             + box18.scores + box19.scores + box20.scores + box21.scores
                             + box22.scores + box23.scores + box24.scores + box25.scores
                             + box26.scores + box27.scores + box28.scores + box30.scores
                             + box29.scores + box31.scores + box32.scores + box33.scores
                             + box34.scores + box35.scores + box36.scores + box37.scores
                             + box38.scores + box39.scores + box40.scores + box41.scores
                             + box42.scores + box43.scores + box44.scores
    property int dienumbers: box1.die + box2.die + box3.die + box4.die + box5.die
                             + box6.die + box7.die + box8.die + box9.die
                             + box10.die + box11.die+ box12.die + box13.die
                             + box14.die+ box15.die + box16.die + box17.die
                             + box18.die + box19.die + box20.die + box21.die
                             + box22.die + box23.die+ box24.die + box25.die
                             + box26.die + box27.die + box28.die  + box30.die
                             + box29.die  + box31.die  + box32.die + box33.die
                             + box34.die  + box35.die  + box36.die  + box37.die
                             + box38.die  + box39.die  + box40.die  + box41.die
                             + box42.die  + box43.die + box44.die
    property int allboxesnumbers: 26
    //first line
    Boxes {
        id: box2
        x: 20
        y: 60
        entityId: "box2"
        randomtimes: Math.random() * 20 + 1
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
    }
    Boxes {
        id: box3
        x: 70
        y: 60
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        entityId: "box3"
        randomtimes: Math.random() * 20 + 1
    }
    Boxes {
        id: box4
        x: 120
        y: 60
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        entityId: "box4"
        randomtimes: Math.random() * 20 + 1
    }

    Boxes {
        id: box5
        x: 170
        y: 60
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        entityId: "box5"
        randomtimes: Math.random() * 20 + 1
    }
    Boxes {
        id: box6
        x: 220
        y: 60
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        entityId: "box6"
        randomtimes: Math.random() * 20 + 1
    }
    Boxes {
        id: box7
        x: 270
        y: 60
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        entityId: "box7"
        randomtimes: Math.random() * 20 + 1
    }
    Boxes {
        id: box1
        x: 320
        y: 60
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        entityId: "box1"
        randomtimes: Math.random() * 20 + 1
    }
    Boxes {
        id: box8
        x: 370
        y: 60
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        entityId: "box8"
        randomtimes: Math.random() * 20 + 1
    }
    Boxes {
        id: box9
        x: 420
        y: 60
        entityId: "box9"
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        randomtimes: Math.random() * 20 + 1
    }
    Boxes {
        id: box10
        x: 470
        y: 60
        entityId: "box10"
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        randomtimes: Math.random() * 20 + 1
    }
    Boxes {
        id: box11
        x: 520
        y: 60
        entityId: "box11"
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        randomtimes: Math.random() * 20 + 1
    }
    Boxes {
        id: box12
        x: 570
        y: 60
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        entityId: "box12"
        randomtimes: Math.random() * 20 + 1
    }

    //second line
    Boxes {
        id: box13
        x: 70
        y: 110
        entityId: "box13"
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        randomtimes: Math.random() * 20 + 1
    }
    Boxes {
        id: box14
        x: 120
        y: 110
        entityId: "box14"
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        randomtimes: Math.random() * 20 + 1
    }
    Boxes {
        id: box15
        x: 120
        y: 110
        entityId: "box15"
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        randomtimes: Math.random() * 20 + 1
    }
    Boxes {
        id: box16
        x: 170
        y: 110
        entityId: "box16"
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        randomtimes: Math.random() * 20 + 1
    }
    //third line
    Boxes {
        id: box17
        x: 220
        y: 110
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        entityId: "box17"
        randomtimes: Math.random() * 20 + 1
    }
    Boxes {
        id: box18
        x: 270
        y: 110
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        entityId: "box18"
        randomtimes: Math.random() * 20 + 1
    }
    Boxes {
        id: box19
        x: 320
        y: 110
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        entityId: "box19"
        randomtimes: Math.random() * 20 + 1
    }

    Boxes {
        id: box20
        x: 370
        y: 110
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        entityId: "box20"
        randomtimes: Math.random() * 20 + 1
    }
    Boxes {
        id: box21
        x: 420
        y: 110
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        entityId: "box21"
        randomtimes: Math.random() * 20 + 1
    }
    Boxes {
        id: box22
        x: 470
        y: 110
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        entityId: "box22"
        randomtimes: Math.random() * 20 + 1
    }

    Boxes {
        id: box23
        x: 520
        y: 110
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        entityId: "box23"
        randomtimes: Math.random() * 20 + 1
    }

    //third line
    Boxes {
        id: box24
        x: 120
        y: 160
        entityId: "box24"
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        randomtimes: Math.random() * 20 + 1
    }

    Boxes {
        id: box25
        x: 170
        y: 160
        entityId: "box25"
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        randomtimes: Math.random() * 20 + 1
    }
    Boxes {
        id: box26
        x: 220
        y: 160
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        entityId: "box26"
        randomtimes: Math.random() * 20 + 1
    }
    Boxes {
        id: box27
        x: 270
        y: 160
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        entityId: "box27"
        randomtimes: Math.random() * 20 + 1
    }
    Boxes {
        id: box28
        x: 320
        y: 160
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        entityId: "box28"
        randomtimes: Math.random() * 20 + 1
    }
    Boxes {
        id: box29
        x: 370
        y: 160
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        entityId: "box30"
        randomtimes: Math.random() * 20 + 1
    }
    Boxes {
        id: box30
        x: 420
        y: 160
        entityId: "box29"
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        randomtimes: Math.random() * 20 + 1
    }
    Boxes {
        id: box31
        x: 470
        y: 160
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        entityId: "box31"
        randomtimes: Math.random() * 20 + 1
    }

    //fouth line
    Boxes {
        id: box32
        x: 170
        y: 210
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        entityId: "box32"
        randomtimes: Math.random() * 20 + 1
    }
    Boxes {
        id: box33
        x: 220
        y: 210
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        entityId: "box33"
        randomtimes: Math.random() * 20 + 1
    }
    Boxes {
        id: box34
        x: 270
        y: 210
        entityId: "box34"
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        randomtimes: Math.random() * 20 + 1
    }
    Boxes {
        id: box35
        x: 320
        y: 210
        entityId: "box35"
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        randomtimes: Math.random() * 20 + 1
    }
    Boxes {
        id: box36
        x: 370
        y: 210
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        entityId: "box36"
        randomtimes: Math.random() * 20 + 1
    }
    Boxes {
        id: box37
        x: 420
        y: 210
        entityId: "box37"
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        randomtimes: Math.random() * 20 + 1
    }

    //fifth line
    Boxes {
        id: box38
        x: 220
        y: 260
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        entityId: "box38"
        randomtimes: Math.random() * 20 + 1
    }
    Boxes {
        id: box39
        x: 270
        y: 260
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        entityId: "box39"
        randomtimes: Math.random() * 20 + 1
    }
    Boxes {
        id: box40
        x: 320
        y: 260
        entityId: "box40"
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        randomtimes: Math.random() * 20 + 1
    }
    Boxes {
        id: box41
        x: 370
        y: 260
        entityId: "box41"
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        randomtimes: Math.random() * 20 + 1
    }

    //sixth line
    Boxes {
        id: box42
        x: 270
        y: 310
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        entityId: "box42"
        randomtimes: Math.random() * 20 + 1
    }
    Boxes {
        id: box43
        x: 320
        y: 310
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        entityId: "box43"
        randomtimes: Math.random() * 20 + 1
    }

    //seventh line
    Boxes {
        id: box44
        x: 295
        y: 360
        onGamefailed: gameOver("defeat")
        onBoxdie: {
            if(dienumbers===allboxesnumbers){
                gameOver("vectory")
            }
        }
        entityId: "box44"
        randomtimes: Math.random() * 20 + 1
    }

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

        box2.reset_box_position_and_status(20, 60)
        box3.reset_box_position_and_status(70, 60)
        box4.reset_box_position_and_status(120, 60)
        box5.reset_box_position_and_status(170, 60)
        box6.reset_box_position_and_status(220, 60)
        box7.reset_box_position_and_status(270, 60)
        box1.reset_box_position_and_status(320, 60)
        box8.reset_box_position_and_status(370, 60)
        box9.reset_box_position_and_status(420, 60)
        box10.reset_box_position_and_status(470, 60)
        box11.reset_box_position_and_status(520, 60)
        box12.reset_box_position_and_status(570, 60)
        box13.reset_box_position_and_status(70, 110)
        box14.reset_box_position_and_status(120, 110)
        box15.reset_box_position_and_status(120, 110)
        box16.reset_box_position_and_status(170, 110)
        box17.reset_box_position_and_status(220, 110)
        box18.reset_box_position_and_status(270, 110)
        box19.reset_box_position_and_status(320, 110)
        box20.reset_box_position_and_status(370, 110)
        box21.reset_box_position_and_status(420, 110)
        box22.reset_box_position_and_status(470, 110)
        box23.reset_box_position_and_status(520, 110)
        box24.reset_box_position_and_status(120, 160)
        box25.reset_box_position_and_status(170, 160)
        box26.reset_box_position_and_status(220, 160)
        box27.reset_box_position_and_status(270, 160)
        box28.reset_box_position_and_status(320, 160)
        box29.reset_box_position_and_status(370, 160)
        box30.reset_box_position_and_status(420, 160)
        box31.reset_box_position_and_status(470, 160)
        box32.reset_box_position_and_status(170, 160)
        box33.reset_box_position_and_status(220, 210)
        box34.reset_box_position_and_status(270, 210)
        box35.reset_box_position_and_status(320, 210)
        box36.reset_box_position_and_status(370, 210)
        box37.reset_box_position_and_status(420, 210)
        box38.reset_box_position_and_status(220, 260)
        box39.reset_box_position_and_status(270, 260)
        box40.reset_box_position_and_status(320, 260)
        box41.reset_box_position_and_status(370, 260)
        box42.reset_box_position_and_status(270, 310)
        box43.reset_box_position_and_status(320, 310)
        box44.reset_box_position_and_status(295, 360)
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
        box31.drop_off_box()
        box32.drop_off_box()
        box33.drop_off_box()
        box34.drop_off_box()
        box35.drop_off_box()
        box36.drop_off_box()
        box37.drop_off_box()
        box38.drop_off_box()
        box39.drop_off_box()
        box40.drop_off_box()
        box41.drop_off_box()
        box42.drop_off_box()
        box43.drop_off_box()
        box44.drop_off_box()
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
