trigger TaskCreationOnNewAcct on Account (after insert) {
    if(trigger.isAfter)
    {
        if(trigger.isInsert)
        {
            List<Task> NewTaskList = new List<Task>();
            for (Account A : Trigger.new)
            {                   
                system.debug('Trigger After Account Insert:');
                Task t = new Task();
                t.whatID = A.Id;
                t.Subject = 'Meeting with ' + A.Name;
                t.Priority = 'Normal';
                t.Status = 'Not Started';
                t.OwnerId = A.OwnerId;
                t.ActivityDate = System.today();
                NewTaskList.add(t); 
            }
            if(!NewTaskList.IsEmpty())
            insert NewTaskList;
        }
    }
}