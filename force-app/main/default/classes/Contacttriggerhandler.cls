public class Contacttriggerhandler {
    public static void afterUpdateHelper(List<Contact> conList){
        
         Set<Id> setId = new Set<Id>();
        for(Contact con:conList){
            setId.add(con.AccountId);
        }
        system.debug('setId ' + setId);
        
        List<Account> accItemList = [Select Id, Name, Phone,Fax, (Select Id, FirstName, LastName, Phone,Fax, AccountId From Contacts) From Account Where Id IN:setId];             
        for(Account a1:accItemList){
            for(Contact c1:a1.Contacts){
                if(c1.Phone !=null){
                     a1.Phone = c1.Phone;
                    a1.Fax= c1.Fax;
                     update accItemList;                     
                }
            }
        }
        
        
    }

}