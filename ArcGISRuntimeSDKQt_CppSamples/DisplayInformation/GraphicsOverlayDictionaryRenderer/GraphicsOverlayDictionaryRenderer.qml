// [WriteFile Name=GraphicsOverlayDictionaryRenderer, Category=DisplayInformation]
// [Legal]
// Copyright 2015-2016 Esri.

// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
// http://www.apache.org/licenses/LICENSE-2.0

// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// [Legal]

import QtQuick 2.6
import QtQuick.Controls 1.4
import Esri.ArcGISRuntime 100.0
import Esri.ArcGISExtras 1.1
import Esri.Samples 1.0

GraphicsOverlayDictionaryRendererSample {
    id: graphicsOverlayDictionaryRendererSample
    width: 800
    height: 600

    property real scaleFactor: System.displayScaleFactor
    property string dataPath: System.userHomePath + "/ArcGIS/Runtime/Data"

    onGraphicsLoaded: {
        zoomToGraphics();
        progressBar_loading.visible = false;
    }

    // Create MapView here, and create its Map and GraphicsOverlay in C++ code
    MapView {
        objectName: "mapView"
        anchors.fill: parent
    }

    ProgressBar {
        id: progressBar_loading
        anchors {
            horizontalCenter: parent.horizontalCenter
            bottom: parent.bottom
            margins: 5 * scaleFactor
        }
        indeterminate: true
    }

    Rectangle {
        anchors.fill: parent
        color: "transparent"
        border {
            width: 0.5 * scaleFactor
            color: "black"
        }
    }
}