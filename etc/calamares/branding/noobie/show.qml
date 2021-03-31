/* === This file is part of Calamares - <http://github.com/calamares> ===
 *
 *   Copyright 2015, Teo Mrnjavac <teo@kde.org>
 *   Copyright 2018, Adriaan de Groot <groot@kde.org>
 *
 *   Calamares is free software: you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License as published by
 *   the Free Software Foundation, either version 3 of the License, or
 *   (at your option) any later version.
 *
 *   Calamares is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 *   GNU General Public License for more details.
 *
 *   You should have received a copy of the GNU General Public License
 *   along with Calamares. If not, see <http://www.gnu.org/licenses/>.
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
            text: qsTr("<b>Welcome to ArcoBobo-i3, an arch-based rolling distribution "+
                "based on a ArcoLinux-i3 but with a different look.<br/><br/>"+
                "Whilst the OS is being installed on your computer,...take a little break.<br/>")
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
            text: qsTr("<b>ArcoBobo-i3 is a Arch Linux Distribution with a tilling window manager! ")
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
            text: qsTr("<b>This distribution installs many programs by default<br/>"+
            			"Many more are made available through the Calamares installer.<br/>"+
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
            text: qsTr("<b>ArcoBobo-i3<br/><br/><br/> Hope you have fun with this OS!")
            wrapMode: Text.WordWrap
            width: parent.width / 1.4
            horizontalAlignment: Text.AlignHCenter
        }
    }

    // When this slideshow is loaded as a V1 slideshow, only
    // activatedInCalamares is set, which starts the timer (see above).
    //
    // In V2, also the onActivate() and onLeave() methods are called.
    // These example functions log a message (and re-start the slides
    // from the first).
    function onActivate() {
        console.log("QML Component (default slideshow) activated");
        presentation.currentSlide = 0;
    }
    
    function onLeave() {
        console.log("QML Component (default slideshow) deactivated");
    }

}
