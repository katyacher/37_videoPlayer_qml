import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.1

Window {
    id: player
    width: 1040
    height: 680
    visible: true
    title: qsTr("My Video Player")

    ButtonGroup {
        id: btnGroup
    }

    GridLayout {
        id: grid
        anchors.fill: parent

        rows: 1
        columns: 8

      /*  Row {
              id: row
              anchors.bottom: parent.bottom
              anchors.left: parent.left

*/


              Button{
                  id: play
                  ButtonGroup.group: btnGroup
                  text: "\u25B6"
                  onClicked: {player.color = "#678fff";}

                  //Layout.alignment : parent.bottom
                 // Layout.alignment : parent.left
                  anchors.bottom: parent.bottom
                  anchors.left: parent.left
                  Layout.row: 1
                  Layout.column: 1

              }
              Button{
                  id: pause
                  ButtonGroup.group: btnGroup
                  text: "\u23F8"
                  onClicked: {player.color = "#556677";}

                  anchors.bottom: parent.bottom
                  anchors.left: play.right
                  Layout.row: 1
                  Layout.column: 2


              }
              Button{
                  id: stop
                  ButtonGroup.group: btnGroup
                  text: "\u23F9"
                  onClicked: {player.color = "#223344";}

                  anchors.bottom: parent.bottom
                  anchors.left: pause.right
                  Layout.row: 1
                  Layout.column: 3


              }

              Button{
                  id: rewind
                  ButtonGroup.group: btnGroup
                  text: "\u23EA"
                  onClicked: {player.color = "#aabbcc";}

                  anchors.bottom: parent.bottom
                  anchors.left: stop.right
                  Layout.row: 1
                  Layout.column: 4


              }
              Button{
                  id: forward
                  ButtonGroup.group: btnGroup
                  text: "\u23E9"
                  onClicked: {player.color = "#778899";}

                  anchors.bottom: parent.bottom
                  anchors.left: rewind.right
                  Layout.row: 1
                  Layout.column: 5

              }
         /*  }*/

     /*   Row {
              id: next_row
              anchors.bottom: parent.bottom
              anchors.left: row.right;

*/
            Text{
                id: start_time
                text: "00:00";
                anchors.bottom: parent.bottom
                anchors.left: forward.right
                anchors.bottomMargin: 15;
                anchors.leftMargin: 20;
                color: white;

                Layout.row: 1;
                Layout.column: 6;

            }
            ProgressBar{
                id: progress
                height: btnGroup.height
                width: player.width - btnGroup.width - 60

                Layout.fillWidth: true

                anchors.bottomMargin: 20;
                anchors.leftMargin: 20;
                anchors.rightMargin: 20;

                from: 0;
                to: 1;

                anchors.bottom: parent.bottom;
                anchors.left: start_time.right;
                Layout.row: 1
                Layout.column: 7
            }

            Text{
                id: video_length_time
                text: "00:00";
                anchors.bottom: parent.bottom
                anchors.left: progress.right
                Layout.fillWidth: true

                anchors.bottomMargin: 15;
                anchors.leftMargin: 20;
                anchors.rightMargin: 20;

                Layout.row: 1
                Layout.column: 8

            }
       /* }*/
    }


}
