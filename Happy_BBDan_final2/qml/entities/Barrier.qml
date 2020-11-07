import QtQuick 2.0
import Felgo 3.0

EntityBase{
    id:barrier
    entityType: "barrier"
    PolygonItem{
        id:polygon
        color: "red"
        //fill:true
        vertices: [
            Qt.point(10,0),
            Qt.point(0,20),
            Qt.point(20,20)
        ]
        anchors.fill: parent
    }
    PolygonCollider{
        id:polygoncircollider
        bodyType: Body.Static
        vertices: [
            Qt.point(10,0),
            Qt.point(0,20),
            Qt.point(20,20)
        ]
        anchors.fill: polygon
        fixture.onBeginContact: {
            removeEntity()
        }
    }
}
