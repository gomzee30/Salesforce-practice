trigger AfterUndelete on Contact (after undelete) {
    if(Trigger.isAfter)
    {
        if(Trigger.isUnDelete)
        {
            System.debug('After UNDelete results below');
            System.debug('Trigger.New Debug: ' + Trigger.New);
            System.debug('Trigger.Old Debug: ' + Trigger.Old);
            System.debug('Trigger.NewMap Debug: ' + Trigger.NewMap);
            System.debug('Trigger.OldMap Debug: ' + Trigger.OldMap);
        }
    }
}