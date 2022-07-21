public class Demo {
public static void insertOperation(List<Account> accounts) {
for(Account acc: accounts) {
acc.Name += ' Inserted |';
acc.Phone +='99999';
}
}
public static void updateOperation(List<Account> accounts) {
for(Account acc: accounts) {
acc.Phone +='000000';
}
}
public static void createContact(List<Account> accounts) {
List<Contact> c_list = new List<Contact>();
for(Account acc: accounts) {
contact c = new Contact();
c.LastName = acc.Name;
c.AccountId = acc.Id;
c.phone = acc.Phone;
c_list.add(c);
}
insert c_list;
}
public static void updateContact(List<Account> accounts) {
for(Account acc: accounts) {
List<Contact> c_list = [select Id, MobilePhone from Contact];
for(Contact c: c_list) {
c.Phone = acc.Phone;
}
update c_list;
}
}
}