import QtQuick 2.2
import QtQuick.Controls 1.3

Rectangle {
    id: rectangle1
    width: 450
    height: 220
    color: "#ffffff"
    border.width: 0
    border.color: "#c7c7c7"

    Text {
        id: text6
        x: 56
        y: 36
        width: 28
        height: 17
        text: qsTr("主页url：")

        font.pixelSize: 14
        font.family: "Times New Roman"
    }

    TextInput {
        objectName: "url_input"
        id: url_input
        x: 136
        y: 36
        width: 273
        height: 20
        text: qsTr("http://www.zhihu.com/people/yuwei-80")
        selectionColor: "#800000"
        opacity: 1
        visible: true
        font.family: "Times New Roman"
        echoMode: TextInput.Normal
        cursorVisible: true
        horizontalAlignment: Text.AlignLeft
        font.pixelSize: 14
    }

    Button {
        id: button_run
        x: 159
        y: 186
        width: 80
        text: qsTr("开始爬虫")
        isDefault: false
        checkable: true
        activeFocusOnPress: true
        objectName: "button_run"
        enabled: true

        onClicked: {
            button_running.visible = true
            button_run.visible = false
        }
    }

    Button {
        id: button_running
        x: 159
        y: 187
        width: 80
        height: 23
        text: qsTr("正在爬虫中")
        visible: false
        isDefault: true
        z: 1
        checkable: false
        checked: true

        activeFocusOnPress: true
        objectName: "button_run"
        enabled: true
    }

    Button {
        id: button_quit
        x: 148
        y: 186
        z:2
        width: 103
        height: 26
        text: qsTr("点击加载动态")
        visible: added_feeds.is_end
        activeFocusOnPress: true
        enabled: true
        isDefault: false
        objectName: "button_quit"
        checkable: false
    }

    TextInput {
        id: textInput1
        x: 136
        y: 93
        width: 80
        height: 18
        text: qsTr("60")
        cursorVisible: true
        font.pixelSize: 14
        echoMode: TextInput.Normal
        horizontalAlignment: Text.AlignLeft
        font.family: "Times New Roman"

        objectName: "feed_num_input"
    }

    Text {
        id: text1
        x: 56
        y: 91
        text: qsTr("动态数量：")
        font.family: "Times New Roman"
        font.pixelSize: 14
    }

    Text {
        id: text2
        x: 56
        y: 148
        width: 286
        height: 15
        text: qsTr("注意动态数量越多，所花时间越长，推荐50以内")
        font.family: "Times New Roman"
        font.italic: true
        font.pixelSize: 12
    }

    Text{
        x: 222
        y: 93
        width: 104
        height: 18
        text: "已获取动态数量："

    }

    Text {
        id: text3
        x: 319
        y: 93
        width: 40
        height: 18
        text:  added_feeds.getted_feeds_num
        font.pixelSize: 12
    }








}

