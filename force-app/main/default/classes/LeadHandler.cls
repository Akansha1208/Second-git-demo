public class LeadHandler {
    public static void insertHandler(List<Lead> Leads){
        for(Lead leadrecord: Leads){
            if(string.isBlank(leadrecord.LeadSource)){
                leadrecord.LeadSource = 'other';
            }
        }
    }
    public static void updateHandler(List<Lead> Leads){
        for(Lead leadrecord: Leads){
            if(string.isBlank(leadrecord.LeadSource)){
            leadrecord.addError('Please fill the type');
            
        }
        }  
    }

}