public with sharing class TeacherTimeTableController { 

    @AuraEnabled(cacheable=true) 

    public static list<TimeTable__c> getTimeTable(Id rid){ 

        TimeTable__c[] timetablelist = [select std__c,subject__c, start__c, end__c from TimeTable__c where Teacher__c =: rid]; 

        return timetablelist; 

    } 
}