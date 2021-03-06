#Map loaded

This sample demonstrates how to tell what the map's load status is.

![](screenshot.png)

##How it works

The load status is obtained from the loadStatus property, which is inherited from the loadable interface. The loadStatus will be considered loaded when any of the following are true: the map has a valid spatial reference; the map has an an initial viewpoint; one of the map's predefined layers has been created. A lambda is set up on the map to handle the loadStatusChanged signal, and the status text in the bottom of the sample is updated when the status changes.

##Features
- MapView
- Map
- Basemap
