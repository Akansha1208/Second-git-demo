public class AccountContactService {
    public static void service(set<Id> accountIds){
                  List<AggregateResult> results= [SELECT AccountId, COUNT(Id) totalContacts 
                                                  FROM Contact 
                                                  WHERE Active__c=TRUE AND AccountId IN :accountIds
                                                  GROUP BY AccountId];
        Map<Id, Account> AccountToUpdate = new Map<Id, Account>();
                for(AggregateResult result:results){
                     String accountId= String.valueOf(result.get('AccountId'));
                    Integer totalContact= Integer.valueOf(result.get('totalContacts'));
                    Account acc = new Account(Id= accountId,Active_Contact__c =totalContact);
                    AccountToUpdate.put(accountId,acc);
    }
        for(Id accountId:accountIds){
            if(!AccountToUpdate.containskey(accountId)){
                AccountToUpdate.put(accountId,new Account(Id=accountId, Active_Contact__c=0));
                
            }
        }
       update AccountToUpdate.values();
}
}