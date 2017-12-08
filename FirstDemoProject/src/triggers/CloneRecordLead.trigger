trigger CloneRecordLead on Lead (after insert) {
    private static boolean alreadyModified = false;
    if(Trigger.isAfter)
    {
        if(Trigger.isInsert)
        {     
            if(alreadyModified)
            {
                List<Lead> leadList = new List<Lead>();
	            for (Lead L : Trigger.new)
	            {                   
	                system.debug('Trigger After Insert:');
	                leadList.add(L.clone(false,true,true,true));                
	            }           
	            insert leadList;                                
	            alreadyModified = false;
            }             
        }
    }
    
}