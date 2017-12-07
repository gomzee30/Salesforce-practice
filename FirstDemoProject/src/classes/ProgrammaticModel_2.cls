public with sharing class ProgrammaticModel_2 {
    public void AllContact(){
	    Integer count=0;
	    List<Contact> cnt = [SELECT Id,LastName,Name,Email FROM Contact];                                
	    for(Contact c : cnt){
	        count++;           
	        System.debug('Contact Details: '+ count + ': ' + c);
	    }  
   }
   
   public void ActiveUser()
   {
       Integer count=0;
       List<User> userList = [SELECT Id,Email,Name FROM User WHERE IsActive = True];
        Map<Id, User> myMap = new Map<Id, User>();
        for(User u : userList){
            myMap.put(u.Id, u);
        } 
       System.debug('User Map: '+ myMap);
   }
   
   public void AccountMap2()
   {
       Integer count=0;
       List<Account> acctList = [SELECT Id,Name,BillingState FROM Account];
        Map<Id, Account> myMap = new Map<Id, Account>();
        for(Account a : acctList){
            myMap.put(a.Id, a);
        } 
       System.debug('Account Map2: '+ myMap);
   }
   
   public void AccountMap()
   {
       Integer count=0;
       List<Account> acctList = [SELECT Id,Name FROM Account];
        Map<String,Id> myMap = new Map<String,Id>();
        for(Account a : acctList){
            myMap.put(a.Name, a.Id);
        } 
       System.debug('Account Map1: '+ myMap);
   }
   
   
   
   
   
   
   
}