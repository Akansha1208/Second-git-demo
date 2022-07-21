trigger EmailAlerts on Notices__c (before insert) {
    List<Messaging.SingleEmailMessage> mails = new List<Messaging.SingleEmailMessage>();
for (Notices__c myemail : Trigger.new) {
if ((myemail.Info__c != NULL) && (myemail.Name != NULL)){
Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
List<String> sendTo = new List<String>();
sendTo.add(myemail.Students_Email__c );
mail.setToAddresses(sendTo);
mail.setSubject('Field Update');
mail.setHtmlBody('You have received one notice');
mails.add(mail);}}
Messaging.sendEmail(mails);}