public class Undeletechild {

public static void Undeletechildmethod(List<Account> acclist){

        Set<Id> AccountIdSet =  new Set<Id>();

        for(Account a : acclist){

            AccountIdSet.add(a.Id);   

        }

        List<Contact> conlist1 = new List<Contact>();

        List<Contact> conlist = [SELECT id, AccountId From Contact WHERE AccountId IN: AccountIdSet];

        for(Contact c : conlist){

            c.AccountId = null; //this will unlink Account and Contact

            conlist1.add(c);

        }

        update conlist1;

    }

}