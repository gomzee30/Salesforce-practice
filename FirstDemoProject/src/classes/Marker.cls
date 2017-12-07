public with sharing virtual class Marker {
    public virtual void write() {
        System.debug('Writing some text.');
    }
    public virtual Double discount() {
        return .05;
    }
}