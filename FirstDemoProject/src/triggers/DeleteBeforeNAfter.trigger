trigger DeleteBeforeNAfter on Contact (after undelete, before delete) {
    if(Trigger.isBefore)
    {
        if(Trigger.isDelete)
        {
            System.debug('Before Delete results below');
            System.debug('Trigger.New Debug: ' + Trigger.New);
            System.debug('Trigger.Old Debug: ' + Trigger.Old);
            System.debug('Trigger.NewMap Debug: ' + Trigger.NewMap);
            System.debug('Trigger.OldMap Debug: ' + Trigger.OldMap);
        }
    }
    
    if(Trigger.isAfter)
    {
        if(Trigger.isDelete)
        {
            System.debug('After Delete results below');
            System.debug('Trigger.New Debug: ' + Trigger.New);
            System.debug('Trigger.Old Debug: ' + Trigger.Old);
            System.debug('Trigger.NewMap Debug: ' + Trigger.NewMap);
            System.debug('Trigger.OldMap Debug: ' + Trigger.OldMap);
        }
    }
}