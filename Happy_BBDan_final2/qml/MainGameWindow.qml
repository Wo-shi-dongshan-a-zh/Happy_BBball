import Felgo 3.0
import QtQuick 2.0
import "scenes"

GameWindow {
    id: gameWindow
    height: 960
    width: 640
    EntityManager {
        id: entityManager
        entityContainer: gamescene
        poolingEnabled: true
    }

    FontLoader {
        id: organo
        source: "../assets/Organo.ttf"
    }
    FontLoader {
        id: squareo
        source: "../assets/Squareo.ttf"
    }
    FontLoader {
        id: square
        source: "../assets/Square.ttf"
    }
    FontLoader{
        id:px_san
        source: "../assets/px_sans_nouveaux.ttf"
    }

    Menuscene {
        id: menuscene
        width: gameWindow.width
        height: gameWindow.height
        opacity: 0
        onPlaygame: {
            //console.log("GameWindow: ", gameWindow.width)
            backgroundMusic.stop()
            gameWindow.state = "modelchoose"
        }
        onHelp: gameWindow.state = "help"
    }
    GameScene {
        id: gamescene
        width: gameWindow.width
        height: gameWindow.height
        opacity: 0
        //        onLoaderDestory: entitymanager.removeEntityById(entity_id)
        onBackSelectUI: gameWindow.state = "chooselevel"
        onBackModelChooseUI: gameWindow.state="modelchoose"
    }
    ModelChooseScene{
        id:modelChooseScene
        width: gameWindow.width
        height: gameWindow.height
        opacity: 0
        onTraditionalModelClicked: {
            entityManager.removeAllPooledEntities()//清除pool池里的实体
            gameWindow.state="chooselevel"
        }
        onEndlessModelClicked: {
            entityManager.removeAllPooledEntities()//清除pool池里的实体
            gamescene.setLevel("endless.qml")
            gamescene.loader.item.resetgame()
            gameWindow.state="play"
        }
        onBack: {
            gameWindow.state="menu"
        }
    }

    ChooseLevelScene {
        id: chooselevelscene
        width: gameWindow.width
        height: gameWindow.height
        opacity: 0
        onBackClicked: gameWindow.state = "modelchoose"
        onPlaywith: {
            if(gamescene.activeLevelFileName!=levelfile){
                gamescene.setLevel(levelfile)
            }else{
                gamescene.loader.item.resetgame()//退出重进同一个关卡，就直接重置之前关卡的场景
            }

            gameWindow.state = "play"
        }
    }
    HelpScene {
        id: helpscene
        width: gameWindow.width
        height: gameWindow.height
        onBack: gameWindow.state = "menu"
        opacity: 0
    }
    state: "menu"
    activeScene: menuscene
    states: [
        State {
            name: "menu"
            PropertyChanges {
                target: menuscene
                opacity: 1
            }
            PropertyChanges {
                target: gameWindow
                activeScene: menuscene
            }
        },
        State {
            name: "play"
            PropertyChanges {
                target: gamescene
                opacity: 1
            }
            PropertyChanges {
                target: gameWindow
                activeScene: gamescene
            }
        },
        State {
            name: "modelchoose"
            PropertyChanges {
                target: modelChooseScene
                opacity: 1
            }
            PropertyChanges {
                target: gameWindow
                activeScene: modelChooseScene
            }
        },
        State {
            name: "chooselevel"
            PropertyChanges {
                target: chooselevelscene
                opacity: 1
            }
            PropertyChanges {
                target: gameWindow
                activeScene: chooselevelscene
            }
        },
        State {
            name: "help"
            PropertyChanges {
                target: helpscene
                opacity: 1
            }
            PropertyChanges {
                target: gameWindow
                activeScene: helpscene
            }
        }
    ]
}
