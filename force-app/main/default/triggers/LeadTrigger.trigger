trigger LeadTrigger on Lead (before insert,after insert,before update,after update) {
    switch on Trigger.operationType{
        when BEFORE_INSERT{
            LeadHandler.insertHandler(Trigger.new);
        }
        when BEFORE_UPDATE{
            LeadHandler.updateHandler(Trigger.new);
        }
    }
    
}