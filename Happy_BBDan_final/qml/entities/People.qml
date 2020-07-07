import QtQuick 2.0
import Felgo 3.0

EntityBase {
    id: people
    entityType: "people"
    height: 110
    width: 50
    Image {
        source: "../../assets/monster.png"
        anchors.fill: boxcollider
    }
    BoxCollider {
        id: boxcollider
        categories: Box.Category3
        collidesWith: Circle.Category1
        bodyType: Body.Static
        sensor: true
    }
    function resetPeoplePosition(xpos) {
        x = xpos
    }
}
