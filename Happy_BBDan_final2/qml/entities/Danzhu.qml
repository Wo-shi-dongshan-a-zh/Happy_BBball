import QtQuick 2.0
import Felgo 3.0

EntityBase {
    id: danzhu
    height: 20
    width: 20
    entityId: "Danzhu"
    entityType: "Danzhu"
    signal addDanzhu
    Image {
        id: danzhu_image
        source: "../../assets/item_0.png"
        anchors.fill: circollider
    }
    CircleCollider {
        id: circollider
        radius: danzhu.width / 2
        anchors.fill: parent
        sensor: true
        fixture.onBeginContact: {
            removeEntity()
            addDanzhu()
        }
    }
}
