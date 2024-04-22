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
    color: "#000000"



    RowLayout {
        id: row
        //anchors.fill: parent
        Layout.fillWidth: true
        anchors.bottom: parent.bottom;
        //anchors.bottomMargin: 10
        //Layout.rowSpan: 0
        spacing: 0


        ButtonGroup {
            id: btnGroup
        }

             Button{
                  id: play
                  ButtonGroup.group: btnGroup
                  text: "\u25B6"
                  onClicked: {player.color = "#bbbbbb";}

              }
              Button{
                  id: pause
                  ButtonGroup.group: btnGroup
                  text: "\u23F8"
                  onClicked: {player.color = "#1f1f1f";}

              }
              Button{
                  id: stop
                  ButtonGroup.group: btnGroup
                  text: "\u23F9"
                  onClicked: {player.color = "#000000";}

              }

              Button{
                  id: rewind
                  ButtonGroup.group: btnGroup
                  text: "\u23EA"
                  onClicked: {player.color = "#afafaf";}
              }

              Button{
                  id: forward
                  ButtonGroup.group: btnGroup
                  text: "\u23E9"
                  onClicked: {player.color = "#bbbbbb";}

              }


               Text{
                    id: start_time
                    text: "00:00";
                    color: "#ffffff"

                    Layout.leftMargin: 20
               }

                ProgressBar{
                    id: progress
                    height: btnGroup.height
                    width: player.implicitWidth - btnGroup.implicitWidth
                    //implicitWidth : 100

                    Layout.fillWidth: true
                    Layout.leftMargin: 10
                    Layout.rightMargin: 10

                    value: 0.3
                }

                Text{
                    id: video_length_time
                    text: "05:00";
                    color: "#ffffff"

                    Layout.rightMargin: 20;
                }
        }
}
