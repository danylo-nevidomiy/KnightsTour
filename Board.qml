import QtQuick 2.0
import Tour 1.0

GridView{
    id:board

    cellHeight: board.height/board.model.size()
    cellWidth: board.width/board.model.size()

    interactive: false

    delegate: Item {
        id: _backgroundDelegate
        width: board.cellWidth
        height: board.cellHeight



        Cell{
            id:cell
            property int ind: index
            anchors.fill: _backgroundDelegate
//            anchors.margins: 5
            color: (Math.floor(index/board.model.size()) + index%board.model.size()) % 2 ? "#90652C" : "#DEB887"
            internalText.text: display.toString()

            MouseArea{
                anchors.fill: parent
                onClicked: {
                    board.model.step(index);
//                    cell.color = "red";
                }
            }
            Connections{
                target: board.model
                function onHighlightedCellsChanged(){
                    if(board.model.isHighlighted(cell.ind)){
                        cell.color = "red";
                    }else{
                        cell.color = (Math.floor(index/board.model.size()) + index%board.model.size()) % 2 ? "#90652C" : "#DEB887";
                    }
                }
            }

//            height: board.cellHeight
//            width: board.cellWidth
            //        size: board.width<board.height ? board.width/5 : board.height/5
            //        width: board.width/5
            //        height: board.height/5
        }
    }



}
