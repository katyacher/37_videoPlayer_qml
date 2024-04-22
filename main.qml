import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.2

Window {
    id: player
    width: 840
    height: 480
    visible: true
    title: qsTr("My Video Player")



    RowLayout {
        id: row
        //anchors.fill: parent
        Layout.fillWidth: true
        anchors.bottom: parent.bottom;

        ButtonGroup {
            id: btnGroup
        }

             Button{
                  id: play
                  ButtonGroup.group: btnGroup
                  text: "\u25B6"
                  onClicked: {player.color = "#678fff";}

                  //Layout.alignment : parent.bottom
                 // Layout.alignment : parent.left


              }
              Button{
                  id: pause
                  ButtonGroup.group: btnGroup
                  text: "\u23F8"
                  onClicked: {player.color = "#556677";}

                  //anchors.bottom: parent.bottom
                 // Layout.alignment: play.right


              }
              Button{
                  id: stop
                  ButtonGroup.group: btnGroup
                  text: "\u23F9"
                  onClicked: {player.color = "#223344";}


                 // Layout.alignment: pause.right


              }

              Button{
                  id: rewind
                  ButtonGroup.group: btnGroup
                  text: "\u23EA"
                  onClicked: {player.color = "#aabbcc";}


                 // Layout.alignment: stop.right



              }

              Button{
                  id: forward
                  ButtonGroup.group: btnGroup
                  text: "\u23E9"
                  onClicked: {player.color = "#778899";}


                 // Layout.alignment: rewind.right

              }


                Text{
                    id: start_time
                    text: "00:00";

                   // Layout.alignment: forward.right
                    anchors.bottomMargin: 15
                    anchors.leftMargin: 20
                }

                ProgressBar{
                    id: progress
                    height: btnGroup.height
                   // width: player.width - btnGroup.width - 60

                    Layout.fillWidth: true

                    anchors.bottomMargin: 20
                    anchors.leftMargin: 20
                    anchors.rightMargin: 20

                    from: 0
                    to: 1


                   // Layout.alignment: start_time.right;

                }

                Text{
                    id: video_length_time
                    text: "00:00";

                  //  Layout.alignment: progress.right
                    Layout.fillWidth: true

                    anchors.bottomMargin: 15;
                    anchors.leftMargin: 20;
                    anchors.rightMargin: 20;
                }
        }
}
