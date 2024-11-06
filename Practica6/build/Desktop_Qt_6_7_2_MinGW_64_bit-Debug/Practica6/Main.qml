import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Aplicación con Vistas")

    RowLayout {
        anchors.fill: parent
        anchors.leftMargin: 0
        anchors.rightMargin: 0
        anchors.topMargin: 0
        anchors.bottomMargin: 0

        // Columna Izquierda con Botones
        ColumnLayout {
            Layout.minimumWidth: 100
            Layout.maximumWidth: 150
            anchors.left: parent.left
            spacing: 120
            anchors.verticalCenter: parent.verticalCenter

            Button {
                width: 84
                height: 32
                text: "Elementos"
                onClicked: stackView.currentIndex = 0
                background: Rectangle{
                    color: "#D3D3D3"
                    radius: 10
                    border.color: "#A9A9A9"
                    border.width: 1
                }
            }

            Button {
                width: 84
                height: 32
                text: "Edición"
                onClicked: stackView.currentIndex = 1
                background: Rectangle{
                    color: "#D3D3D3"
                    radius: 10
                    border.color: "#A9A9A9"
                    border.width: 1
                }
            }

            Button {
                width: 84
                height: 32
                text: "Usuarios"
                onClicked: stackView.currentIndex = 2
                background: Rectangle{
                    color: "#D3D3D3"
                    radius: 10
                    border.color: "#A9A9A9"
                    border.width: 1
                }
            }

            Button {
                width: 84
                height: 32
                text: "Configuración"
                onClicked: stackView.currentIndex = 3
                background: Rectangle{
                    color: "#D3D3D3"
                    radius: 10
                    border.color: "#A9A9A9"
                    border.width: 1
                }
            }
        }

        // Vista de la Derecha
        StackLayout {
            id: stackView
            Layout.fillWidth: true
            Layout.fillHeight: true

            // Vista de Elementos
            Item {
                ColumnLayout {
                    anchors.fill: parent

                    Text {
                        text: "Vista de Elementos"
                        font.pixelSize: 24
                        horizontalAlignment: Text.AlignHCenter
                        Layout.alignment: Qt.AlignTop | Qt.AlignHCenter
                    }


                    GridLayout {
                        columns: 3
                        rowSpacing: 10
                        columnSpacing: 10
                        Layout.fillWidth: true
                        Layout.fillHeight: true

                        Repeater {
                            model: 7
                            Rectangle {
                                Layout.maximumHeight: 250
                                Layout.maximumWidth: 350
                                Layout.minimumHeight: 50
                                Layout.minimumWidth: 100
                                Layout.preferredHeight: 100
                                Layout.preferredWidth: 150

                                color: "#7f7c7b"
                                border.color: "#393939"
                                radius: 10

                                Text {
                                    text: "Elemento " + (index + 1)
                                    anchors.centerIn: parent
                                    font.pixelSize: 16
                                    color: "#393939"
                                }
                            }
                        }
                    }
                    RoundButton {
                        text: "+"
                        anchors.bottom: parent.bottom
                        anchors.right: parent.right
                        width: 50
                        height: 50
                        background: Rectangle {
                            color: "#0288D1"
                            radius: 25
                        }
                    }
                }
            }


            Item {
                Text {
                    text: "Vista de Edición"
                    font.pixelSize: 24
                    anchors.centerIn: parent
                }
            }


            Item {
                Text {
                    text: "Vista de Usuarios"
                    font.pixelSize: 24
                    anchors.centerIn: parent
                }
            }


            Item {
                Text {
                    text: "Vista de Configuración"
                    font.pixelSize: 24
                    anchors.centerIn: parent
                }
            }
        }
    }
}
