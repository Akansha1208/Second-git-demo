public class Demo3 {
public static void insertname(list<Account> acclist){
System.debug('acclist'+acclist);
list<Contact> conlist = new List<Contact>();
for(Account acc:acclist){
Contact con = new Contact();
con.LastName = acc.Name;
con.AccountId = acc.id;
conlist.add(con);
}
insert conlist;
}
public static void updatename(list<Account> acclist){
for(Account acc:acclist){
    Contact con = new Contact();
  
System.debug('update trigger');
con.LastName=acc.name;
}
}
}