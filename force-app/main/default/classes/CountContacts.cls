public class CountContacts {
    public static void insertHandler(List<Contact> newcontacts){
        Set<Id> accountIds = new Set<Id>();
        for(Contact con: newcontacts){
              if(String.isNotBlank(con.AccountId))
                  accountIds.add(con.AccountId);
    }
        AccountContactService.service(accountIds);
   }
    Public static void updateHandler(List<Contact> newcontacts, Map<Id,Contact> oldcontacts){
        Set<Id> accountIds = new Set<Id>();
        for(Contact con: newcontacts){
            if(String.isNotBlank(con.AccountId) && oldcontacts.get(con.Id).Active__c!=con.Active__c){
                  accountIds.add(con.AccountId);
            }
            else if(oldcontacts.get(con.Id).AccountId!=con.AccountId){
                accountIds.add(con.AccountId);
                accountIds.add(oldcontacts.get(con.Id).AccountId); 
        }     
    }
        AccountContactService.service(accountIds);
        
}
    public static void deleteHandler(List<Contact> oldcontacts){
        Set<Id> accountIds = new Set<Id>();
        for(Contact con: oldcontacts){
              if(String.isNotBlank(con.AccountId))
                  accountIds.add(con.AccountId);
    }
        AccountContactService.service(accountIds);
    }
    public static void undeleteHandler(List<Contact> newcontacts){
        Set<Id> accountIds = new Set<Id>();
        for(Contact con: newcontacts){
              if(String.isNotBlank(con.AccountId))
                  accountIds.add(con.AccountId);
    }
        AccountContactService.service(accountIds);
}
}