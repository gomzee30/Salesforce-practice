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
       List<User> userList = [SELECT Id,Email,Name FROM User WHERE IsActive = True];
        Map<Id, User> myMap = new Map<Id, User>();
        for(User u : userList){
            myMap.put(u.Id, u);
        } 
       System.debug('User Map: '+ myMap);
   }
   
   public void AccountMap2()
   {
       List<Account> acctList = [SELECT Id,Name,BillingState FROM Account];
        Map<Id, Account> myMap = new Map<Id, Account>();
        for(Account a : acctList){
            myMap.put(a.Id, a);
        } 
       System.debug('Account Map2: '+ myMap);
   }
   
   public void AccountMap()
   {
       List<Account> acctList = [SELECT Id,Name FROM Account];
        Map<String,Id> myMap = new Map<String,Id>();
        for(Account a : acctList){
            myMap.put(a.Name, a.Id);
        } 
       System.debug('Account Map1: '+ myMap);
   }
   
   public void Enrollment2010()
   {
       Integer count=0;
       List<Account> acctList = [SELECT Id,Name FROM Account WHERE Enrollment__c = '2010'];
       for(Account c : acctList){
            count++;           
            System.debug('Account With Enrollment 2010: '+ count + ': ' + c);
        }
   }
   
   public void Enrollment2013and2014()
   {
       Integer count=0;
       List<Account> acctList = [SELECT Id,Name FROM Account WHERE Enrollment__c INCLUDES ('2013','2014')];
       for(Account c : acctList){
            count++;           
            System.debug('Account With Enrollment 2010: '+ count + ': ' + c);
        }
   }
   
   public void BillingState()
   {
       Integer count=0;
       List<Account> acctList = [SELECT Name,BillingState FROM Account 
                                WHERE BillingState NOT IN ('Maharashtra','Kerala') 
                                ORDER BY BillingState DESC NULLS LAST LIMIT 10000];
       for(Account c : acctList){
            count++;           
            System.debug('Billing not in MH * KE: '+ count + ': ' + c);
        }
   }
   
   public void OppFromRecycle()
   {
       Integer count=0;
       List<Opportunity> oppList = [SELECT Amount,Name FROM Opportunity WHERE Amount > 10000 
                                ORDER BY CreatedDate ASC NULLS FIRST LIMIT 100 OFFSET 15];
       for(Opportunity c : oppList){
            count++;           
            System.debug('Opps with deleted: '+ count + ': ' + c);
        }
   }
   
   public void DistinctLeadSource()
   {
       Integer count=0;
       AggregateResult[] groupedResults = [SELECT LeadSource, count(Id) FROM Lead
									group by LeadSource
									Having count(Id) > 5];
       for(AggregateResult ar : groupedResults){
            count++;           
            System.debug('Distinct Lead source: '+ count + ': ' + ar.get('LeadSource'));
            System.debug('Distinct Lead Count: '+ count + ': ' + ar.get('expr0'));
        }
   }
   
   public void FiscalYear()
   {
       AggregateResult[] groupedResults = [SELECT FISCAL_YEAR(CloseDate) fy, SUM(AMOUNT) sa FROM Opportunity WHERE IsClosed = True
                                            GROUP BY FISCAL_YEAR(CloseDate)];
        Map<Object,Object> myMap = new Map<Object,Object>();
        for(AggregateResult a : groupedResults){
            //myMap.put(a.get('FISCAL_YEAR(CloseDate)'), a.get('expr0'));
            myMap.put(a.get('fy'), a.get('sa'));
        } 
       System.debug('Fical Year: '+ myMap);
   }
   
   public void FiscalYear2()
   {
       AggregateResult[] aggList = [SELECT  FiscalYear fy, SUM(Amount) amt FROM Opportunity WHERE closeDate = THIS_FISCAL_YEAR GROUP BY FiscalYear];
       Map<Object, Object> oppMap = new Map<Object, Object>();
       for(AggregateResult aggResult : aggList){
	       oppMap.put(aggResult.get('fy'), aggResult.get('amt'));
	       System.debug('Year : '+ aggResult.get('fy') + ' Amount: '+aggResult.get('amt'));
        }
   }
   
   public void MediaContact()
   {
       Integer count=0;
       List<Contact> cntList = [SELECT Account.Name, Account.Industry FROM Contact WHERE Account.Industry ='Media'];
       for(Contact c : cntList){
            count++;           
            System.debug('Media Contact: '+ count + ': ' + c);
        }
   }
   
   public void CJunction()
   {
       Integer count=0;
       List<C__c> cList = [SELECT Name,A_relation__r.Name, B_relation__r.Name FROM C__c WHERE Name = 'John'];
       system.debug('test '+cList);
       for(C__c item : cList){
            count++;           
            System.debug('Media Contact: '+ count + ': ' + item);
        }
   }
   
   
   
   
   
   
   
   
   
   
   
}