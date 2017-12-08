trigger UpdateBeforeNAfter on Contact (after update, before update) {
    if(Trigger.isBefore)
    {
        if(Trigger.isUpdate)
        {
            System.debug('Before update results below');
            System.debug('Trigger.New Debug: ' + Trigger.New);
            System.debug('Trigger.Old Debug: ' + Trigger.Old);
            System.debug('Trigger.NewMap Debug: ' + Trigger.NewMap);
            System.debug('Trigger.OldMap Debug: ' + Trigger.OldMap);
        }
    }
    
    if(Trigger.isAfter)
    {
        if(Trigger.isUpdate)
        {
            System.debug('After update results below');
            System.debug('Trigger.New Debug: ' + Trigger.New);
            System.debug('Trigger.Old Debug: ' + Trigger.Old);
            System.debug('Trigger.NewMap Debug: ' + Trigger.NewMap);
            System.debug('Trigger.OldMap Debug: ' + Trigger.OldMap);
        }
    }
}