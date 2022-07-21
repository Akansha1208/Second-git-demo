public class AllLead {

    @AuraEnabled

    public static List<String> getLeadSource(){

        List<String> options = new List<String>();

        Schema.DescribeFieldResult fieldResult = Lead.LeadSource.getDescribe();

        List<Schema.PicklistEntry> pList = fieldResult.getPicklistValues();

        for (Schema.PicklistEntry p: pList) {

            options.add(p.getLabel());

        }

        return options;

    }



    @AuraEnabled

    public static List<Lead> getLeads(String cLeadSource) {

        List<Lead> leads =[SELECT Name,Phone,Industry,Email,Company,Address,Rating,LeadSource FROM Lead WHERE LeadSource=:cLeadSource];

        return leads;

    }

  

    @AuraEnabled

    public static List<Lead> getAllLeads() {

        List<Lead> allLeads = [SELECT Name,Phone,Industry,Email,Company,Address,Rating,LeadSource FROM Lead];

        return allLeads;

    }

}