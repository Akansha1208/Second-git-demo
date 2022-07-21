public class Scoreboardresult {
    @AuraEnabled
    public static List<Students__c> returnRecord(String recordId){
        List<Students__c> studentList = new List<Students__c>();
        studentList = [Select id,Hindi__c,Maths__c,Science__c,Name from Students__c where id =: recordId];
        
        return studentList;
    }

}