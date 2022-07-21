public with sharing class lwcSortingDataTableCtrl {
@AuraEnabled(Cacheable = true)
public static List<TimeTable__c> sortEventsList(){
List<TimeTable__c> accListObj= [SELECT Id, std__c, subject__c,Starts__c, ends__c, Teacher__r.Name FROM TimeTable__c Where Name!= null];
return accListObj;
}
}