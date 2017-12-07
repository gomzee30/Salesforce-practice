public with sharing class SOQLConcept {
    public void DisplayClosedOpp(){
    	Integer count=0;
    	List<Opportunity> opp = [SELECT Id,AccountId 
    	                           FROM Opportunity
    	                          WHERE AccountId != Null 
    	                            AND (StageName = 'Closed Won' OR StageName = 'Closed Lost')];
    	Map<String, String> myMap = new Map<String, String>();                            
	    for(Opportunity p : opp){
	    	count++;
	       myMap.put(p.Id, P.AccountId);
	      System.debug('Opportunity Id '+ count + ': ' + p.Id);
          System.debug('Opportunity AccountId '+ count + ': ' + p.AccountId);
	    }	      
	      System.debug('Opportunity Map '+ count + ': ' + myMap);  
	    
    }  
    
    public void MapOppAcct()
    {
        Opportunity[] Opps = [SELECT AccountId,Id FROM Opportunity];
        Map<Id, List<Opportunity>> mapping = new Map<Id, List<Opportunity>>();
        for(Opportunity item : Opps)
        {
            if(mapping.containsKey(item.AccountId))
            {
            	mapping.get(item.AccountId).add(item);
            }
            else
            {
                mapping.put(item.AccountId, new List<Opportunity> {item});
            }
        }
        System.debug(mapping);
    }
    
    public void UpdateAcctName()
    {
        List<Account> acctWithA = [SELECT Name FROM Account WHERE Name LIKE 'a%'];
        Account[] updatedNameList = new List<Account>();
        System.debug('Total Accounts with Name starts with letter A: '+ acctWithA.size());
        for(Account a : acctWithA){
        	a.Name = 'Updated via update DML operation';	        
        } 
        update acctWithA;
    }
    
    public void CampaignRecords()
    {
        List<Campaign> campAsc = [SELECT Name FROM Campaign ORDER BY Name ASC NULLS LAST LIMIT 10];
        List<Campaign> campDec = [SELECT Name FROM Campaign ORDER BY Name DESC NULLS LAST LIMIT 10];
        System.debug('Campaign in Ascending order: '+ campAsc);
        System.debug('Campaign in Descending order: '+ campDec);
    }
    
    public void ContLastModified()
    {        
        List<Contact> cntModified = [SELECT Email,FirstName,LastModifiedDate FROM Contact WHERE LastModifiedDate = :System.today()];
        System.debug('Contact Modified Today: '+ cntModified);
        for(Contact cm : cntModified){
            System.debug('Contact Modified Today: '+ cm);
        }
    }
    
    public void DbQueryDemo()
    {
    	List<Contact> cntList = new List<Contact>();
        String cntName = 'gomzee';
        String query =  'SELECT Id,Email,FirstName FROM Contact WHERE LastName LIKE \'%' + cntName + '%\'';
        System.debug('Database Query Example: '+ query);
        cntList = Database.query(query);
        System.debug('Database Query Example: '+ cntList);
    }
    
    	
    
    
    
/*End of function*/      
}