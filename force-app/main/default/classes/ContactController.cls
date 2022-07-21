public class ContactController {
    public static void delRelContact(List<Account>account, Map<Id, Account> AccountObjRel){       
        
         Set<Id> AccountSetId = AccountObjRel.keySet();
             system.debug('AccountSetId ' + AccountSetId);
             List<Contact> ContactObj= [Select Id, Name, AccountId From Contact Where AccountId IN:AccountSetId];
            
              Map<Id, Contact> childMapList = new Map<Id, Contact>(); 
             
             for(Contact ch1:ContactObj){
                 if(ch1.AccountId == null){
                   childMapList.put(ch1.AccountId, ch1);    
                 }
                 
               }
             system.debug('childMapList# ' + childMapList);
             
             for(Account s1:account){
                 if(childMapList.containsKey(s1.Id)){
                     s1.addError('We can not delete related record!!');
                 }
             }
        
    }

}