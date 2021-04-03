/* === This file is part of Calamares - <https://calamares.io> ===
 *
 *   SPDX-FileCopyrightText: 2015 Teo Mrnjavac <teo@kde.org>
 *   SPDX-FileCopyrightText: 2018 Adriaan de Groot <groot@kde.org>
 *   SPDX-License-Identifier: GPL-3.0-or-later
 *
 *   Calamares is Free Software: see the License-Identifier above.
 *
 */

import QtQuick 2.0;
import calamares.slideshow 1.0;

Presentation
{
    id: presentation

    function nextSlide() {
        console.log("QML Component (default slideshow) Next slide");
        presentation.goToNextSlide();
    }

    Timer {
        id: advanceTimer
        interval: 30000
        running: presentation.activatedInCalamares
        repeat: true
        onTriggered: nextSlide()
    }

    Slide {
        anchors.fill: parent
        anchors.verticalCenterOffset: 0
        Image {
            id: background1
            source: "slide.png"
            width: parent.width; height: parent.height
            horizontalAlignment: Image.AlignCenter
    		verticalAlignment: Image.AlignTop
            fillMode: Image.Stretch
            anchors.fill: parent
        }
        Text {
        	font.family: "Zekton"
            anchors.centerIn: parent
            anchors.verticalCenterOffset: 180
            anchors.horizontalCenterOffset: 0
            font.pixelSize: parent.width *.016
            color: 'white'
            text: qsTr("<b>Welcome to ArcoBobo - i 3<br/" +
		"This is a arch-based rolling distribution <br/"+
                "based on a ArcoLinux - i 3 but with a different look.<br/><br/>"+
                "Whilst the OS is being installed on your computer...<br/>"+
                "take a little break.<br/>")
            wrapMode: Text.WordWrap
            width: parent.width / 1.4
            horizontalAlignment: Text.AlignHCenter
        }
    }

    Slide {

        anchors.fill: parent
        anchors.verticalCenterOffset: 0

        Image {
            id: background2
            source: "slide2.png"
            width: parent.width; height: parent.height
            horizontalAlignment: Image.AlignCenter
    		verticalAlignment: Image.AlignTop
            fillMode: Image.Stretch
            anchors.fill: parent
        }
        Text {
        	font.family: "Zekton"
            anchors.centerIn: parent
            anchors.verticalCenterOffset: 180
            anchors.horizontalCenterOffset: 0
            font.pixelSize: parent.width *.016
            color: 'white'
            text: qsTr("<b>ArcoBobo - i 3 is an Arch Linux Distribution<br/"+
		" with a tilling window manager! Info : hit F1")
            wrapMode: Text.WordWrap
            width: parent.width / 1.4
            horizontalAlignment: Text.AlignHCenter
        }
    }

    Slide {
        anchors.fill: parent
        anchors.verticalCenterOffset: 0

        Image {
            id: background3
            source: "slide3.png"
            width: parent.width; height: parent.height
            horizontalAlignment: Image.AlignCenter
    		verticalAlignment: Image.AlignTop
            fillMode: Image.Stretch
            anchors.fill: parent
        }
        Text {
        	font.family: "Zekton"
            anchors.centerIn: parent
            anchors.verticalCenterOffset: 180
            anchors.horizontalCenterOffset: 0
            font.pixelSize: parent.width *.016
            color: 'white'
            text: qsTr("<b>This ArcoLinux Spinoff installs many programs by default.<br/>"+
               		"Additionally, you can use yay and pacman to install from the repos.")
            wrapMode: Text.WordWrap
            width: parent.width / 1.4
            horizontalAlignment: Text.AlignHCenter
        }
    }

    Slide {

        anchors.fill: parent
        anchors.verticalCenterOffset: 0

        Image {
            id: background4
            source: "slide4.png"
            width: parent.width; height: parent.height
            horizontalAlignment: Image.AlignCenter
    		verticalAlignment: Image.AlignTop
            fillMode: Image.Stretch
            anchors.fill: parent
        }
        Text {
	    font.family: "Zekton"
            anchors.centerIn: parent
            anchors.verticalCenterOffset: 180
            anchors.horizontalCenterOffset: 0
            font.pixelSize: parent.width *.016
            color: 'white'
            text: qsTr("<b>ArcoBobo - i 3<br/><br/><br/> Hope you have fun with this OS!")
            wrapMode: Text.WordWrap
            width: parent.width / 1.4
            horizontalAlignment: Text.AlignHCenter
        }

    }

    function onActivate() {
        console.log("QML Component (default slideshow) activated");
        presentation.currentSlide = 0;
    }

    function onLeave() {
        console.log("QML Component (default slideshow) deactivated");
    }

}
