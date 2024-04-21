import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.0

Window {
    id: player
    width: 640
    height: 480
    visible: true
    title: qsTr("My Video Player")




    ButtonGroup {
        id: btnGroup
    }



        Row {
              id: row
              anchors.bottom: parent.bottom
              anchors.horizontalCenter: parent.horizontalCenter

              Button{
                  id: play
                  ButtonGroup.group: btnGroup
                  text: "\u25B6"
                  anchors.leftMargin: 0
                  onClicked: {player.color = "#678fff";}

              }
              Button{
                  id: pause
                  ButtonGroup.group: btnGroup
                  text: "\u23F8"
                  anchors.leftMargin: 100
                  onClicked: {player.color = "#556677";}


              }
              Button{
                  id: stop
                  ButtonGroup.group: btnGroup
                  text: "\u23F9"
                  anchors.leftMargin: 50
                  onClicked: {player.color = "#223344";}


              }

              Button{
                  id: rewind
                  ButtonGroup.group: btnGroup
                  text: "\u23EA"
                  anchors.leftMargin: 200
                  onClicked: {player.color = "#aabbcc";}


              }
              Button{
                  id: forward
                  ButtonGroup.group: btnGroup
                  text: "\u23E9"
                  anchors.leftMargin: 150
                  onClicked: {player.color = "#778899";}

              }

           }

        ProgressBar{
            height: 50
            width:400
            anchors.horizontalCenter: parent.horizontalCenter
            //anchors.bottom: parent.bottom
            //anchors.horizontalCenter: parent.horizontalCenter
            from: 0
            to: 1
        }






}
