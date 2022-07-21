@isTest
public class TestContactTriggerHandler {
    
    public static testmethod void testinsert()
 {
String myname = 'SalesforceKid';
 //Pass that string name as a Input to Account 
  Account a = new Account(name = myname);
//Pass lastname to contact as a string 
  Contact con = new Contact(lastname = 'Salesforcekid'); 
  insert con;

   Contact c = [SELECT Id,AccountId, Phone, Fax FROM Contact];
   if(c != null)
  {
//Check whether the value of contact and account is similar
   a.Phone=c.Phone;
      a.Fax=c.Fax;
  insert c;
     
  }
} 
        public static testmethod void testupdate()
 {
String myname = 'SalesforceKid';
 //Pass that string name as a Input to Account 
  Account a = new Account(name = myname);
//Pass lastname to contact as a string 
  Contact con = new Contact(lastname = 'Salesforcekid'); 
  insert con;
//Find out the contact with same name as Account string myname
   Contact c = [SELECT Id, Phone, Fax FROM Contact];
   if(c != null)
  {
//Check whether the value of contact and account is similar
   a.Phone=c.Phone;
      a.Fax=c.Fax;
  update c;
     
  }
} 
}