public with sharing class YellowMarker extends Marker {
    public override void write() {
        System.debug('Writing some text using the yellow marker.');
    }    
}

/*
Marker obj1, obj2;
obj1 = new Marker();
obj1.write();
obj2 = new YellowMarker();
obj2.write();

*/