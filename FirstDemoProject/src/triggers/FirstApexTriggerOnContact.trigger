trigger FirstApexTriggerOnContact on Contact (before insert, after insert) {
    if(Trigger.isBefore)
    {
        if(Trigger.isInsert)
        {
            System.debug('Trigger.New Debug: ' + Trigger.New);
            System.debug('Trigger.Old Debug: ' + Trigger.Old);
            System.debug('Trigger.NewMap Debug: ' + Trigger.NewMap);
            System.debug('Trigger.OldMap Debug: ' + Trigger.OldMap);
        }
    }
    
    if(Trigger.isAfter)
    {
        if(Trigger.isInsert)
        {
            System.debug('Trigger.New Debug: ' + Trigger.New);
            System.debug('Trigger.Old Debug: ' + Trigger.Old);
            System.debug('Trigger.NewMap Debug: ' + Trigger.NewMap);
            System.debug('Trigger.OldMap Debug: ' + Trigger.OldMap);
        }
    }
}